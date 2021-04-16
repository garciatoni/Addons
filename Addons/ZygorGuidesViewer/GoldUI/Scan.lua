local name,ZGV=...

-- GLOBAL ZGV_IMPORT_HOURLY_DATA,ZGV_IMPORT_HOURLY_INTERVAL,ZGV_IMPORT_HOURLY_INTERVAL_ROUNDED,ZGV_IMPORT_HOURLY_TIME

local ZGVG=ZGV.Gold

ZGVG.Scan={}

local Scan=ZGVG.Scan


Scan.state = "SS_OUT"
Scan.queryspin = 0

local MassScanInterval = 15*60

local QUERY_TIMEOUT = 10 -- was 5

local Appraiser

local yield=coroutine.yield
local floor=floor
local round=math.round

tinsert(ZGV.startups,{"Gold scan startup",function(self)
	Scan:CreateWorkFrame()
	Scan:CreateUIFrame()

	Scan.db = ZGV.db

	if not Scan.db.realm.gold_scan_data then Scan.db.realm.gold_scan_data={} end
	Scan.data = Scan.db.realm.gold_scan_data

	Scan:ImportHourly()

	Scan.rawdata = {}

	Scan.enabled = true

	-- Fix blizzard scan errors
	ITEM_QUALITY_COLORS[-1]=ITEM_QUALITY_COLORS[0]

	ZGV:Debug("Gold: Scan enabled.")
end,after="guides_loaded"})


Scan.scan_page=1
Scan.scan_pages=0
Scan.last_scan_start_time_ms=0
Scan.last_scan_start_time=0

local orderedPairs = ZGV.OrderedPairs


Scan.Proxy = {}
local Proxy=Scan.Proxy

function Scan:ScanFast()
	--if not select(2,CanSendAuctionQuery()) then return false,"can't scan yet" end
	if self.state~="SS_IDLE" then return false,"state "..self.state.." not SS_IDLE" end

	self.get_links = not ZGV.db.profile.quickscan
	if ZGV.db.profile.quickscan then ZGV:Print(ZGV.L["opt_quickscan_warning"]) end

	self.scan_page = 1

	table.wipe(self.rawdata)
	self.Proxy:PerformQuery("", nil, nil, 0, false, -1, true) -- FULL SCAN!
	
	self.scanning_fast = true
	self:SetState("SS_QUERYING")
	return true
end

Scan.BrowseQuery = {minLevel=0,maxLevel=0,filters={},sorts={}};
function Scan:ScanByName(name,itemid,dontanalyze)
	Scan.ListenItemID = nil
	Scan.ScannedItemID = nil
	Scan.ScannedItemKey = nil
	Scan.ScannedPetID = nil

	if self.state=="SS_BUYING" then ZGV:Debug("&scan Scan:ScanByName|cffffee00 cannot scan, buyout not finished!") return false end
	if name=="" then return false,"no name" end
	if self.state~="SS_IDLE" then return false,"state "..self.state.." not SS_IDLE" end

	local exact = true
	self.queried_by_id = nil
	self.get_links = false
	
	if itemid > 1000000000 then -- search for pets by petid
		Scan.ScannedPetID = ZGV.PetBattle:GetBattlePetIdFromFakeId(itemid)
	end

	table.wipe(self.rawdata)

	Scan.BrowseQuery.searchString = name;
	if not dontanalyze then
		Scan.queried_by_name = name
		Scan.ScannedItemID = itemid
		Scan:SetState("SS_QUERYING")
	end
	C_AuctionHouse.SendBrowseQuery(Scan.BrowseQuery);
	return true
end

function Scan:ListenByName(name,itemid)
	Scan.ListenItemID = nil
	Scan.ScannedItemID = nil
	Scan.ScannedItemKey = nil
	Scan.ScannedPetID = nil

	if self.state=="SS_BUYING" then ZGV:Debug("&scan Scan:ScanByName|cffffee00 cannot scan, buyout not finished!") return false end
	if name=="" then return false,"no name" end
	if self.state~="SS_IDLE" then return false,"state "..self.state.." not SS_IDLE" end

	local exact = true
	self.queried_by_id = nil
	self.get_links = false
	
	if itemid > 1000000000 then -- search for pets by petid
		Scan.ScannedPetID = ZGV.PetBattle:GetBattlePetIdFromFakeId(itemid)
	end

	table.wipe(self.rawdata)

	Scan.BrowseQuery.searchString = name;
	local dontanalyze --TODO: unused?
	if not dontanalyze then
		Scan.queried_by_name = name
		Scan.ListenItemID = itemid
		Scan.ScannedItemKey = C_AuctionHouse.MakeItemKey(itemid)
		
		Scan:SetState("SS_QUERYING")
	end
	return true
end


function Scan:CanScanFast()
	return not self.cooldown,0
end


-- WARNING: may requery for some rows, WILL keep requerying for large result sets that won't fit in cache!
function Scan:ResultsListComplete()
	local count = self:GetAuctionCount("list")
	for row=1,count do
		local name, texture, count, quality,canUse,  level,levelColHeader,minBid,minIncrement,buyoutPrice,  bidAmount,ishighBidder,bidderFullName,ownerName,ownerFullName,  saleStatus,itemId,hasAllInfo = GetAuctionItemInfo("list", row)
		if not hasAllInfo then
			self:Debug("ResultsListComplete? |cffff0000NO|r. Row %d has missing data.")
			return false
		end
	end
	self:Debug("ResultsListComplete? |cff00ff00YES|r!")
	return true
end


function Scan:DumpAuctionItems(focusrow)
	ZGV:Debug("Here's what's on the AH (%d rows):",GetNumAuctionItems("list"))
	for row=1,GetNumAuctionItems("list") do
		local aName,_,aStack,_,_,_,_,_,_,aBuyout,_,_,_,aOwner,_,_,aId  = GetAuctionItemInfo("list",row)
		ZGV:Debug("%s%d. '%s'##%d x%d, b/o %s, owner '%s'",focusrow==row and "|cffffddff" or "",row,aName or "",aId or -1,aStack or -1,GetMoneyString(aBuyout or 0),aOwner or "")
	end
end




local hasQueried = false

local consecutive_updates=0

local prev_scan = {}
Scan.prev_scan = prev_scan

local tabcopy = {}
local function smart_concat(tab,str)
	table.wipe(tabcopy)
	for k=1,18 do tabcopy[k]=tostring(tab[k]) end
	return table.concat(tabcopy,str)
end

function Scan.EventHandler(frame,event,arg1,arg2)
	local self=Scan

	if event=="AUCTION_HOUSE_SHOW" then
		self.FWORK:Show()
		self:SetState("SS_IDLE")
		--hasQueried = false
	elseif event=="AUCTION_HOUSE_CLOSED" then
		self.FWORK:Hide()
		self:SetState("SS_OUT")

	
	-- // new get all scan
	elseif event=="REPLICATE_ITEM_LIST_UPDATE" then
		self.last_was_AILU = true
		if self.last_scan_start_time==GetTime() then return end  -- same frame as query, couldn't possibly be results - this is an initial wipe. Ignore it.

		-- Delaying scan because results tend to arrive with several subsequent A_I_L_U events

		--== Count AILUs
		if self.last_AILU_time ~= GetTime() then
			ZGV:Debug("AILU (auctions updated)")
			self.consecutive_AILU_count = 0
		end
		self.last_AILU_time = GetTime()
		self.consecutive_AILU_count= self.consecutive_AILU_count+ 1

		--==
		self.db.realm.LastScan=time()
		self.db.realm.LastScanAvailable=time()

		if self.state=="SS_BUYING" then
			self:SetState("SS_IDLE")
		
		elseif self.state=="SS_QUERYING" then
			self:SetState("SS_SCANNING")
		end

	-- // new single scan
	elseif self.state=="SS_QUERYING" and (Scan.ScannedItemID or Scan.ScannedItemKey or Scan.ListenItemID) and event=="AUCTION_HOUSE_NEW_RESULTS_RECEIVED" then
		if C_AuctionHouse.HasFullBrowseResults() then
			Scan:SetState("SS_SCANSINGLE")
		end
	elseif self.state=="SS_QUERYING" and (Scan.ScannedItemID or Scan.ScannedItemKey or Scan.ListenItemID) and (event=="AUCTION_HOUSE_BROWSE_RESULTS_UPDATED" or event=="AUCTION_HOUSE_BROWSE_RESULTS_ADDED") then
		-- check for browse results completness
		if C_AuctionHouse.HasFullBrowseResults() then
			Scan:WorkStep()
			Scan:SetState("SS_SCANSINGLE")
		end
	elseif self.state=="SS_SCANSINGLE" and (Scan.ScannedItemID or Scan.ListenItemID) and (event=="COMMODITY_SEARCH_RESULTS_ADDED" or event=="COMMODITY_SEARCH_RESULTS_UPDATED") then
		-- check for commodities results completness
		if C_AuctionHouse.HasFullCommoditySearchResults(Scan.ScannedItemID or Scan.ListenItemID) then
			Scan:WorkStep("commodity")
		end
	elseif self.state=="SS_SCANSINGLE" and Scan.ScannedItemKey and (event=="ITEM_SEARCH_RESULTS_ADDED" or event=="ITEM_SEARCH_RESULTS_UPDATED" )then
		-- check for browse results completness
		if AuctionHouseFrame.ItemSellFrame.listDisplayedItemKey and C_AuctionHouse.HasFullItemSearchResults(AuctionHouseFrame.ItemSellFrame.listDisplayedItemKey) then
			Scan:WorkStep("item")
		end
		

	elseif event=="ZGV_CSAQNAME_CHANGED" then
		local can_scan = arg2
		ZGV:Debug("Can scan?: %s",can_scan and "|cffbbeebbyes|r" or "|cffff7799no|r")
		if not self.scanning_fast then
			if can_scan and self.state=="SS_QUERYING" and GetNumAuctionItems("list")==0 then
				-- well damn, no results arrived within timeout. Scan it, call it quits.
				self:Debug("Can scan again, but no results arrived yet... Calling it quits. Scan, wrap.")
				self:SetState("SS_SCANNING")
			end
		end

		if can_scan and self.CanScanCallback then self.CanScanCallback() self.CanScanCallback=nil end
	end
	
	ZGVG.Appraiser.UpdateHandler(nil,1000) -- force update
end

-- handle single item scans from 8.3 api
function Scan:WorkStep(mode)
	-- we are here, so we have full browse results
	local browseresults = C_AuctionHouse.GetBrowseResults()

	local desiredID = Scan.ScannedItemID or Scan.ListenItemID 

	-- count how many items match our search
	local matched,total = 0,0
	for index,item in pairs(browseresults) do
		if item.itemKey.itemID == desiredID or item.itemKey.battlePetSpeciesID==Scan.ScannedPetID then
			total = total + 1
		end
	end

	-- search query relevant items, until we have search results for them
	for index,item in pairs(browseresults) do
		local itemKey = item.itemKey
		if itemKey.itemID == desiredID or itemKey.battlePetSpeciesID==Scan.ScannedPetID then
			local keyinfo = C_AuctionHouse.GetItemKeyInfo(itemKey);
			local equip = keyinfo and keyinfo.isEquipment
			if not C_AuctionHouse.HasSearchResults(itemKey) then
				Scan.ScannedItemKey = itemKey-- or nil
				C_AuctionHouse.SendSearchQuery(itemKey, {}, false);
				return
			else
				matched = matched + 1
				Scan.scan_progress = matched/total
			end
		end
	end

	-- ok, we have all relevant results, make an array to pass to analyzer later
	local row = 0
	if Scan.ListenItemID then
		if mode=="item" then
			if AuctionHouseFrame.ItemSellFrame.listDisplayedItemKey and AuctionHouseFrame.ItemSellFrame.listDisplayedItemKey.itemID == desiredID then
				local searchresults = C_AuctionHouse.GetNumItemSearchResults(AuctionHouseFrame.ItemSellFrame.listDisplayedItemKey)
				for i=1,searchresults do
					local data = C_AuctionHouse.GetItemSearchResultInfo(AuctionHouseFrame.ItemSellFrame.listDisplayedItemKey,i)
					row = row + 1
					tinsert(self.rawdata,"1^" .. row .."^".. (desiredID) .."^".. (data.quantity) .."^".. (data.buyoutAmount) .."^".. (data.itemLink) .."^0") -- hardcoded page 1, hardcoded no owned auctions
				end
			end
		elseif mode=="commodity" then 
			local searchresults = C_AuctionHouse.GetNumCommoditySearchResults(desiredID)
			for i=1,searchresults do
				local data = C_AuctionHouse.GetCommoditySearchResultInfo(desiredID,i)
				row = row + 1
				tinsert(self.rawdata,"1^" .. row .."^".. (data.itemID) .."^".. (data.quantity) .."^".. (data.unitPrice) .."^".. (data.itemLink or "item:"..data.itemID) .."^0") -- hardcoded page 1, hardcoded no owned auctions
			end
		end
	else -- mode=="browse"
		for index,item in pairs(browseresults) do
			local itemKey = item.itemKey
			--print("full",C_AuctionHouse.HasFullItemSearchResults(itemKey))
			--print("full",C_AuctionHouse.HasFullCommoditySearchResults(itemKey.itemID))
			if C_AuctionHouse.HasSearchResults(itemKey) then
				local keyinfo = C_AuctionHouse.GetItemKeyInfo(itemKey);
				if keyinfo.isCommodity then 
					local searchresults = C_AuctionHouse.GetNumCommoditySearchResults(desiredID)
					for i=1,searchresults do
						local data = C_AuctionHouse.GetCommoditySearchResultInfo(desiredID,i)
						row = row + 1
						tinsert(self.rawdata,"1^" .. row .."^".. (data.itemID) .."^".. (data.quantity) .."^".. (data.unitPrice) .."^".. (data.itemLink or "item:"..data.itemID) .."^0") -- hardcoded page 1, hardcoded no owned auctions
					end
				else -- if mode=="item" then
					local searchresults = C_AuctionHouse.GetNumItemSearchResults(itemKey)
					for i=1,searchresults do
						local data = C_AuctionHouse.GetItemSearchResultInfo(itemKey,i)
						row = row + 1
						tinsert(self.rawdata,"1^" .. row .."^".. (itemKey.itemID) .."^".. (data.quantity) .."^".. (data.buyoutAmount) .."^".. (data.itemLink) .."^0") -- hardcoded page 1, hardcoded no owned auctions
					end
				end
			end
		end
	end

	Scan.data.wipe_one = Scan.ScannedItemID

	Scan:AnalyzeAuctions("reset")
	Scan:SetState("SS_ANALYZING")
end

Scan.consecutive_AILU_count=0
Scan.last_AILU_time=0
Scan.wait_after_AILU = 0.000

local lasttime=0
function Scan:Work()
	if self.state=="SS_WAITFORII" and self.WAITFORII_callbacks then
		local n = ZGV:GetItemInfo(self.WAITFORII_callbacks.itemid)
		if n then
			ZGV:Debug("Scan:Work GetItemInfo for " .. self.WAITFORII_callbacks.itemid .. " is ready, resuming query.")
			self:SetState("SS_IDLE")
			self.WAITFORII_callbacks.fun()
			self.WAITFORII_callbacks = nil
		elseif GetTime()>self.WAITFORII_callbacks.starttime+self.WAITFORII_callbacks.wait then
			-- timed out!
			ZGV:Debug("Scan:Work Timed out waiting for GetItemInfo " .. self.WAITFORII_callbacks.itemid)
			self:SetState("SS_IDLE")
			self.WAITFORII_callbacks = nil
		else
			ZGV:Debug("Scan:Work Waiting for GetItemInfo " .. self.WAITFORII_callbacks.itemid)
		end
	elseif self.state=="SS_QUERYING" then
		if GetTime()-self.last_scan_start_time > QUERY_TIMEOUT then
			if self.Proxy:IsFullScan() then
				--ZGV:Print("Scan not possible at this time.")
				self.state="SS_IDLE"
				self.cooldown = true
				if ZGVG.Scan.FailCallback then ZGVG.Scan.FailCallback() ZGVG.Scan.FailCallback=nil end
			end
		end
	--[[ -- unused
	elseif self.state=="SS_RECEIVING" then
		-- grab the page count, for progress
		self.scan_pages = math.ceil(select(2,GetNumAuctionItems("list"))/NUM_AUCTION_ITEMS_PER_PAGE)
		if self.scan_only_one_page then print("drop from",self.scan_pages) self.scan_pages=1 end
	--]]
	elseif self.state=="SS_SCANNING" then
		self:ScanAuctions()
		return
	elseif self.state=="SS_ANALYZING" then
		self:AnalyzeAuctions("go")
		return
	elseif self.state=="SS_NEEDTOQUERY" then
		if CanSendAuctionQuery() and self.queryfunc then
			ZGV:Debug("&scan Running queued query:")
			self:queryfunc()
			self:SetState("SS_QUERYING")
			self.needtoquery_msg=false
		else
			if not self.needtoquery_msg then self:Debug("SS_NEEDTOQUERY Can't query, waiting...") end
			self.needtoquery_msg=true
			if GetTime()-lasttime>1.000 then self:Debug("SS_NEEDTOQUERY Still can't query, waiting...") lasttime=GetTime() end
		end
	elseif self.cooldown then
		if GetTime()-self.last_scan_start_time > 15*60 then
			self.cooldown = false
		end
	end
end

local last_csaq,last_csaq2
local delay,interval=0,0.1
function Scan.UpdateHandler(frame,elapsed)
	-- count AILUs, just for debugging
	if Scan.last_was_AILU then
		if Scan.consecutive_AILU_count>1 then
			Scan:Debug("AILU x".. Scan.consecutive_AILU_count)
		end
		--Appraiser.EventHandler(frame,"ZGV_AFTER_SINGLE_AILU")
		Scan.last_was_AILU=false
	end

	-- Announce CanSendAuctionQuery changes
	--local csaq,csaq2 = CanSendAuctionQuery()
	--if csaq~=last_csaq then self.EventHandler(self.FWORK,"ZYGOR_CSAQNAME_CHANGED",last_csaq,csaq) Appraiser.EventHandler(self.FWORK,"ZYGOR_CSAQNAME_CHANGED",last_csaq,csaq) end
	--if csaq2~=last_csaq2 then self.EventHandler(self.FWORK,"ZYGOR_CSAQFAST_CHANGED",last_csaq2,csaq2) Appraiser.EventHandler(self.FWORK,"ZYGOR_CSAQFAST_CHANGED",last_csaq2,csaq2) end
	--last_csaq,last_csaq2=csaq,csaq2

	--delay=delay+elapsed  if delay>interval then delay=0 else return end
	--[[
	if consecutive_updates>1 then
		ZGV:Debug("Scan:UpdateHandler: |cff335588AUCTION_ITEM_LIST_UPDATE x",consecutive_updates)
		consecutive_updates=0
	end
	--]]
	Scan:Work()
end




local rows_processed = {}
local query_at_once = 100

local last_full_scan=0

local total_goodlinks = 0
local total_badlinks = 0
local total_uniqueids = 0
local starting_row = 0

function Scan:PrepareBeforeScanning()
	total_goodlinks = 0
	total_badlinks = 0
	total_uniqueids = 0
	wipe(rows_processed)
	starting_row = 0
end

local scanning_throttle_ms = 100 --ms
local scanning_throttle_rows = 1000 --rows
local scanning_throttle_sec = 10000 --rows/sec!   -- now using ZGV.db.profile.ahscanintensity!
local scanning_current_sec,scanning_last_sec,scanning_this_sec

function Scan:ScanAuctions()  -- in state: SS_SCANNING
	local batch,total = self:GetAuctionCount("list")

	Scan.total_count = total
	local goodlinks,badlinks,uniqueids,unwanted=0,0,0,0

	
	scanning_throttle_sec = ZGV.db.profile.ahscanintensity


	local tim=time()
	tim = 1  -- store only current data

	local newitems={}

	local proxy_isfullscan = Proxy:IsFullScan()

	if proxy_isfullscan then  -- full scan? prepare to wipe.
		--[[
			-- LEGION: we're now "rescanning" current auction results over and over, to grab all the links which are now served asynchronously.
			-- The block below has to go. Yo.
			if not self.last_scanned_in_batch and time()-last_full_scan<10 then
				-- A new full scan in 10 seconds? You gotta be kidding.
				-- This is an "echo" of an update, IGNORE, or we'll accidentally the whole thing.
				ZGV:Debug("&scan ScanAuctions |cffff8800refusing to scan too frequent full scans.")
				last_full_scan=time()
				self:SetState("SS_IDLE")
				return
			end
		--]]
		last_full_scan=time()
		if self.data then self.data.wipe_me=true end
		self.scan_pages = 1000
		self.last_scanned_in_batch = -1 -- CAH replicate starts at 0, not 1
	else
		self.scan_pages = math.ceil(total/NUM_AUCTION_ITEMS_PER_PAGE)
		self.last_scanned_in_batch=nil
	end

	local saved_Id

	self.last_scanned_in_batch = self.last_scanned_in_batch or 0  -- this means we're in partial processing of a full scan
	
	--self:Debug("Scan:ScanAuctions rows %d - %d , total %d",self.last_scanned_in_batch+1,batch,total)

	local t1 = debugprofilestop()

	local rowsnow=0

	scanning_current_sec = floor(GetTime())
	if scanning_last_sec~=scanning_current_sec then scanning_last_sec=scanning_current_sec  scanning_this_sec=0 end
	
	local player_name = UnitName("player")

	local hasAllCounter=0
	local hasNotAllCounter=0
	local rowsOnPage=0

	local good_data_so_far = true

	local wrong_were_present = false

	local sh_debug = {}

	for row=self.last_scanned_in_batch+1,batch do  repeat
		if rows_processed[row] then break end --continue
		ZGV:Debug("scan row "..row)

		rowsOnPage=rowsOnPage+1
		
		local name, texture, count, quality,canUse,  level,levelColHeader,minBid,minIncrement,buyoutPrice,  bidAmount,ishighBidder,bidderFullName,ownerName,ownerFullName,  saleStatus,itemId,hasAllInfo 
		local link
		if proxy_isfullscan then
			link = C_AuctionHouse.GetReplicateItemLink(row)
			name, texture, count, quality,canUse,  level,levelColHeader,minBid,minIncrement,buyoutPrice,  bidAmount,ishighBidder,bidderFullName,ownerName,ownerFullName,  saleStatus,itemId,hasAllInfo = C_AuctionHouse.GetReplicateItemInfo(row)
		else
			name, texture, count, quality,canUse,  level,levelColHeader,minBid,minIncrement,buyoutPrice,  bidAmount,ishighBidder,bidderFullName,ownerName,ownerFullName,  saleStatus,itemId,hasAllInfo = GetAuctionItemInfo("list", row)
			link = GetAuctionItemLink("list", row)
		end
		if link=="" then link=nil end

		
		sh_debug[row] = {name=name,itemId=itemId,buyoutPrice=buyoutPrice,link=link}

		if not (self.queried_by_id or self.queried_by_link or self.queried_by_partial_name) and self.queried_by_name and not name:find(self.queried_by_name,1,true) then
			-- whoa, it's not our search!
			ZGV:Debug("&scan Scan:ScanAuctions: wrong results! (row %d, queried for %s, found %s... Let's wait for proper results.",row,self.queried_by_name,(name or "unnamed"))
			--self:Crash()
			--wrong_were_present = true
			self:SetState("SS_QUERYING")
			table.wipe(self.rawdata)
			return
		end


		if not self.get_links then link="item:"..itemId end

		if hasAllInfo and not link then ZGV:Debug("WTF! HasAllInfo but no link!") hasAllInfo=false end
		if hasAllInfo and (not name or name=="") then ZGV:Debug("WTF! HasAllInfo but no name!") hasAllInfo=false end

		if not hasAllInfo then --and self.get_links then
		--@if not hasAllInfo then
			hasNotAllCounter=hasNotAllCounter+1
			good_data_so_far = false
			break --continue
		end

		if good_data_so_far then self.last_scanned_in_batch = row end

		hasAllCounter=hasAllCounter+1
		rows_processed[row]=true

		if itemId == 82800 and self.get_links then
		--@if itemId == 82800 then
			if link then
				itemId = ZGV.PetBattle:GetPetFakeIdByLink(link,"generic")
			end
		end
		
		repeat
			if not itemId or not name then  badlinks=badlinks+1  break  end

			if not newitems[itemId] then
				newitems[itemId]=1
				uniqueids=uniqueids+1
			end
			
			--if ownerName==player_name then  break  end

			--if self.queried_by_name and name~=self.queried_by_name then  
			-- pets can exist as either item or caged pets with diff ids, so for pets we search by name

			if not (self.queried_by_link or self.queried_by_partial_name)
			and (
				(self.queried_by_id and itemId~=self.queried_by_id)  -- queried by ID, but it's wrong
				or
				(not self.queried_by_id and self.queried_by_name and name~=self.queried_by_name)  -- queried by name, not by ID, but the name is wrong
			)
			then
				unwanted=unwanted+1  
				--break
				itemId = 0
				count = 1
				buyoutPrice = 0
				link = ""
			end

			if self.queried_by_link and self.queried_by_link~=ZGV.ItemLink.StripBlizzExtras(link) then  
				unwanted=unwanted+1
				--break
				itemId = 0
				count = 1
				buyoutPrice = 0
				link = ""
			end

			-- if all's good...
			tinsert(self.rawdata,(self.scan_page or 1) .. "^" .. row .."^".. itemId .."^".. count .."^".. buyoutPrice .."^".. link .."^".. (ownerName==player_name and 1 or 0))
			
			--[[
				--local link = GetAuctionItemLink("list", i)
				--local id = tonumber(link:match("item:(%d+)"))
				
				--local itemdata --  = dataset[itemId]
				--if not itemdata then itemdata={} dataset[itemId]=itemdata end
			--]]
			--[[
				local IDstring = zc.ItemIDStrfromLink (itemLink);
				
				if (Atr_ILevelHist_Update) then
					Atr_ILevelHist_Update(itemLink)
				end
				
				local OKitemLevel = true
				if (self.minItemLevel or self.maxItemLevel) then
					local _, _, _, iLevel, _ = ZGV:GetItemInfo(itemLink);
					if ((self.minItemLevel and iLevel < self.minItemLevel) or (self.maxItemLevel and iLevel > self.maxItemLevel)) then
						OKitemLevel = false
					end
				end
				
				if (OKitemLevel) then
					if (owner == nil) then
						numNilOwners = numNilOwners + 1
					end

					if (self.exactMatchText == nil or zc.StringSame (name, self.exactMatchText)) then

						if (self.items[IDstring] == nil) then
							self.items[IDstring] = Atr_FindScanAndInit (IDstring, name)
						end
						
						local curpage = (tonumber(self.current_page)-1)

						local scn = self.items[IDstring]

						if (scn) then
							scn:AddScanItem (count, buyoutPrice, owner, 1, curpage)
							scn:UpdateItemLink (itemLink)
						end
					end
				end
			--]]

			goodlinks=goodlinks+1
			saved_Id=itemId
		until true

		rowsnow=rowsnow+1


		scanning_this_sec = scanning_this_sec + 1

	until true
	if hasNotAllCounter>=query_at_once then break end -- Too many missing rows? They got sent as queries to the server. Get out of the scanning loop, come back later.
	end

	if wrong_were_present then ZGV:Debug("Wrong rows detected, returning to query maybe?") self:SetState("SS_QUERYING") return end


	-- we're done!

	self.last_scanned_in_batch=nil

	if batch>NUM_AUCTION_ITEMS_PER_PAGE then

		-- batch==total, probably, but trust no one
		local rows_received = #self.rawdata
		local progress=rows_received/batch

		self.scan_progress = progress

		total_goodlinks = total_goodlinks + goodlinks
		total_badlinks = total_badlinks + badlinks
		total_uniqueids = total_uniqueids + uniqueids

		self:Debug("FastScan |cff88ff00RUNNING|r: %d/%d (%d%%) rows. %d in cycle: %d have all info, %d don't: %d good, %d bad, %d unique.",
			rows_received,batch,progress*100,
			rowsnow,hasAllCounter,hasNotAllCounter,
			goodlinks,badlinks,uniqueids)

		if hasNotAllCounter==0 then
			self:Debug("FastScan |cff88ff00OVER|r: %d/%d (%d%%) rows, %d good, %d bad, %d unique.",
				rows_received,batch,progress*100,
				total_goodlinks,total_badlinks,total_uniqueids)
			self:SetState("SS_ANALYZING")
			self:AnalyzeAuctions("reset")
			self.data.wipe_one = nil
			wipe(rows_processed)
			self.scan_page = self.scan_page + 1
		end


	elseif batch==NUM_AUCTION_ITEMS_PER_PAGE and (self.scan_page*NUM_AUCTION_ITEMS_PER_PAGE<total) and (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link) then

		if hasNotAllCounter==0 then  self.scan_page = self.scan_page + 1  end

		local queryfunc = function(self)
			local queryname = self.queried_by_name or self.queried_by_partial_name or self.queried_by_link
			ZGV:Debug("SlowScan querying...")
			self.Proxy:PerformQuery(queryname, nil, nil, self.scan_page-1, false, -1, false, not self.queried_by_partial_name)
			wipe(rows_processed)
			self:SetState("SS_QUERYING")
		end

		if CanSendAuctionQuery() then
			self:Debug("SlowScan for |cffffee00%s|r |cffffaa00running|r: got %d rows, %d total. %d in cycle: %d good, %d bad, %d unwanted, %d unique, %d have all info. This was page %d, going for next.",
				self.queried_by_name, #self.rawdata,total,
				rowsOnPage,
				goodlinks,badlinks,unwanted,uniqueids,hasAllCounter,
				self.scan_page-1)
			queryfunc(self)
		else
			self:Debug("SlowScan for |cffffee00%s|r |cffffaa00running|r: got %d rows, %d total. %d in cycle: %d good, %d bad, %d unwanted, %d unique, %d have all info. This was page %d, WAITING for next.",
				self.queried_by_name, #self.rawdata,total,
				rowsOnPage,
				goodlinks,badlinks,unwanted,uniqueids,hasAllCounter,
				self.scan_page-1)
			self:SetState("SS_NEEDTOQUERY")
			self.queryfunc=queryfunc
		end
	else
		-- end
		self:Debug("SlowScan for |cffffee00%s|r |cff88ff00OVER|r: got %d rows, %d total. %d in cycle: %d good, %d bad, %d unwanted, %d unique, %d had all info.",
			self.queried_by_name, #self.rawdata,total,
			rowsOnPage,
			goodlinks,badlinks,unwanted,uniqueids,hasAllCounter)
		self:SetState("SS_ANALYZING")
		self:AnalyzeAuctions("reset")
		self.data.wipe_one = saved_Id
		wipe(rows_processed)
	end

	--[[
	-- in some cases..???
	-- error when scanning?
	self:SetState("SS_IDLE")
	--]]

end

-- Returns: batch, sane_total, total
function Scan:GetAuctionCount(typ)
	local batch,total = 0,0
	if Proxy:IsFullScan() then
		total = C_AuctionHouse.GetNumReplicateItems() -1 -- 0..n, not 1..n as rest of lua
		batch = total -1
	else
		total = math.max(Scan.ScannedItemID and C_AuctionHouse.GetNumCommoditySearchResults(Scan.ScannedItemID) or 0,Scan.ScannedItemKey and C_AuctionHouse.GetNumItemSearchResults(Scan.ScannedItemKey) or 0)
		batch = total
	end
	return batch,(total>500000 or total<0) and batch or total,total
end


local analyze_throttle = 50 --ms
function Scan:AnalyzeAuctions(cmd)  -- Ugly Self-coroutine.
	-- selfdriver:
	if cmd=="reset" then 
		self.analyzethread=nil 
		return 
	end
	if cmd=="go" then  self.analyzethread=self.analyzethread or coroutine.create(self.AnalyzeAuctions)  local suc,err=coroutine.resume(self.analyzethread,self)  
	if not suc then ZGV:Debug("&scan ERROR ANALYZING %s",err) self.analyzethread=nil self:SetState("SS_IDLE") end return  end
	-- end of selfdriver

	local tim=time()

	self.data.today = 1 --tim - tim%86400
	self.data[self.data.today] = self.data[self.data.today] or {}
	local data_byitems = self.data[self.data.today]

	local first_wipes
	if self.data.wipe_me then
		self:Debug("AnalyzeAuctions: wipe requested, wiping.")
		table.wipe(data_byitems)
		self.data.wipe_me=nil
	end

	if self.data.wipe_one then
		if data_byitems[self.data.wipe_one] then table.wipe(data_byitems[self.data.wipe_one]) end
	end

	-- Condense raw data only.

	local save_itemId,save_data

	local new=0

	local newitems={}
	if (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link) and self.record_unique_links then 
		self.FoundInScan= self.FoundInScan or {}
		self.FoundInScan[self.queried_by_name or self.queried_by_partial_name or self.queried_by_link] = {} 
	end


	local t1=debugprofilestop()
	
	for i,rawline in ipairs(self.rawdata) do  repeat
		
		-- itemId ..":".. count ..":".. minBid ..":".. buyoutPrice
		local page,row,itemId,count,buyoutPrice,link,is_own = strsplit("^",rawline)

		is_own=(is_own=="1")
		if is_own then break  end
		if link=="" then break  end -- dummy entry
		itemId=tonumber(itemId)
		count=tonumber(count)
		--buyoutPrice=round(buyoutPrice/count)
		buyoutPrice=tonumber(buyoutPrice) -- you no longer can post stacks, so buyout is always the true one

		if buyoutPrice>0
		or itemId==82800 --pet cage
		then  -- no buyout, no deal.
			if itemId==82800 then
				if link then
					itemId = ZGV.PetBattle:GetPetFakeIdByLink(link,"generic")
				end
			end


			if not data_byitems[itemId] then data_byitems[itemId]={} end
			if not newitems[itemId] then newitems[itemId]=1 new=new+1 end
			if (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link) and self.record_unique_links then 
				local sanitized = ZGV.ItemLink.StripBlizzExtras(link,true)
				if not self.FoundInScan[(self.queried_by_name or self.queried_by_partial_name or self.queried_by_link)][sanitized] then 
					self.FoundInScan[(self.queried_by_name or self.queried_by_partial_name or self.queried_by_link)][sanitized]=link 
				end
			end

			local dat=data_byitems[itemId]
			-- store all the data about the item in here.
			-- FIRST PASS.

			-- just get the minimum
			-- or don't
			--[[
			buyoutPrice=buyoutPrice/count
			dat.min = dat.min and min(dat.min,buyoutPrice) or buyoutPrice
			--]]

			if not dat[buyoutPrice] then dat[buyoutPrice]=count else dat[buyoutPrice]=dat[buyoutPrice]+count end

			save_itemId=itemId
			save_data=dat
		end

		if i%100==0 then
			if debugprofilestop()-t1>analyze_throttle then
				self.analysis_progress = i / #self.rawdata
				self:Debug("AnalyzeAuctions: %d%% (%d / %d)",self.analysis_progress*100,i,#self.rawdata)
				yield()
				t1=debugprofilestop()
			end
		end
	until true  end
	self.analysis_progress = 1
	self:Debug("AnalyzeAuctions: %d%% (%d / %d)",self.analysis_progress*100,#self.rawdata,#self.rawdata)

	-- now: data_byitems[itemid]={[12300]=1,[12301]=10,[12299]=1000}

	-- Now let's do some stats.

	--[[

		local new=0
		for itemid=1,100000 do if data[itemid] then -- force sort; pairs or ipairs wouldn't suffice
			-- itemId ..":".. count ..":".. minBid ..":".. buyoutPrice

			local stats={}

			for i,countprice in ipairs(data[itemid]) do
				local count,price = strsplit(":",countprice)
				stats[price]=
			end


			local count,buyoutPrice = strsplit(":",v)
			itemId=tonumber(itemId)

			if not data[itemId] then data[itemId]={} new=new+1 end
			local dat=data[itemId]

			-- just get the minimum
			buyoutPrice=buyoutPrice/count
			dat.min = dat.min and min(dat.min,buyoutPrice) or buyoutPrice



			if i%5000==0 then 
				self.analysis_progress = i / #self.rawdata
				yield()
			end
		end end

	--]]

	--if not ZGV.Gold.Appraiser.AttemptingToBuyout then
		ZGV:Print(("Analysis of " .. (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link or "all auctions") .. " complete. %d items scanned in %d auctions."):format(new,#self.rawdata))
	--end

	--table.wipe(self.rawdata)  -- NOT wiping, please remember to wipe after using the toi- I mean, the Scan. Thank you -- the management.  ~sinus 2015-04-08

	if (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link) then
		ZGV:Debug("&scan Results for|cffffee00 %s|r |cff888888## %s |r:",(self.queried_by_name or self.queried_by_partial_name or self.queried_by_link),save_itemId)
		local count=0
		if save_data then
			for k,v in pairs(save_data) do
				--ZGV:Debug("&scan "..k..","..v)
				count=count+1
			end
			ZGV:Debug("&scan %d postings.",count)
		else
			ZGV:Debug("&scan NONE")
		end
		if save_itemId then self:DebugItem(save_itemId) end
	end

	ZGV:SendMessage("ZGV_GOLD_SCANNED")

	if Scan.Proxy:IsFullScan() then
		Scan.cooldown = true
	end

	if ZGVG.Scan.ResultCallback then ZGVG.Scan.ResultCallback() ZGVG.Scan.ResultCallback=nil end

	self:SetState("SS_IDLE")
end

function Scan:SetState(state)
	self:Debug("SetState %s",state)

	if state=="SS_QUERYING" then
		table.wipe(prev_scan)
		self.scan_pages=0
		self.last_scan_start_time_ms = debugprofilestop()
		self.scan_after_receiving = false
		self.last_scan_start_time = GetTime()
	end

	if self.state=="SS_QUERYING" and state=="SS_OUT" then
		ZGV:Debug("&scan Query cancelled.")
	end
	if state=="SS_NEEDTOQUERY" then lasttime=GetTime() end  -- timestamp last attempt to query, just cosmetics

	if (state=="SS_SCANNING" or state=="SS_BUYING") and state~=self.state then
		self:PrepareBeforeScanning()
	end

	if state=="SS_IDLE" then
		-- ABOMINABLE WORKAROUND for a case of hanging/freezing after a full scan.
		--if not (self.queried_by_name or self.queried_by_partial_name or self.queried_by_link or self.WAITFORII_callbacks or ZGV.Gold.Appraiser.AttemptingToBuyout) then ZGV:Debug("&gold Scan: Sending abominable empty query")  QueryAuctionItems("chrzaszcz brzmi w trzcinie", nil, nil, 0, false, -1, false) end

		self.queried_by_id=false
		self.queried_by_name = false
		self.queried_by_partial_name = false
		self.queried_by_link = false
		self.scanning_fast = false

		ZGV.Gold.Appraiser:Update()
	end

	local oldstate = self.state
	self.state=state
	
	-- Output an event when the state changes
		if oldstate~=state then
			ZGV:SendMessage("ZGV_SS_STATE_CHANGE", state)
		end
	--
end

function Scan:ReAnalyze()
	self:SetState("SS_ANALYZING")
	self:AnalyzeAuctions("reset")
end

local function percentile(itemdata,perc,total)
	local tempcount=0
	local targetcount=floor(perc*total)
	for price,count in orderedPairs(itemdata) do
		tempcount=tempcount+count
		if tempcount>=targetcount then return price end
	end
end
Scan.percentile = percentile

function Scan:GetAnalysis(itemid)
	local data = self.data[self.data.today]
	if not data then return false,"no data for today" end
	local itemdata = data[itemid]
	if not itemdata then return false,"no data for item" end
	
	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = ZGV:GetItemInfo(itemid)
	ZGV:Debug("&scan Analysing: %s",itemLink)
	ZGV:Debug("&scan - vendor %s",GetMoneyString(itemSellPrice))

	local totalcount=0
	local sum=0
	local pricemin,pricemax
	for price,count in orderedPairs(itemdata) do
		totalcount=totalcount+count
		sum=sum+(price*count)
		if not pricemin or pricemin>price then pricemin=price end
		if not pricemax or pricemax<price then pricemax=price end
	end
	ZGV:Debug("&scan seen "..totalcount.." times")
	ZGV:Debug("&scan min "..GetMoneyString(pricemin).." max "..GetMoneyString(pricemax))
	ZGV:Debug("&scan median "..GetMoneyString(percentile(itemdata,0.5,totalcount)))
	ZGV:Debug("&scan 10 perc "..GetMoneyString(percentile(itemdata,0.1,totalcount)))
	ZGV:Debug("&scan 90 perc "..GetMoneyString(percentile(itemdata,0.9,totalcount)))
	ZGV:Debug("&scan average "..GetMoneyString(sum/totalcount))
	ZGV:Debug("&scan center "..GetMoneyString((pricemin+pricemax)/2))
end

local GetPriceindextemp,GetPriceindexrevtemp={},{}
function Scan:GetPrice(itemid)
	table.wipe(GetPriceindextemp)
	table.wipe(GetPriceindexrevtemp)
	local data =  self.data and self.data[self.data.today]
	if not data then return 0,"no data for today at all" end
	local itemdata = data[itemid]
	if not itemdata then return 0,"no data for item" end
	--for price,count in orderedPairs(itemdata) do
	for price,count in ZGV.OrderedPairsCleanFast(itemdata,GetPriceindextemp,GetPriceindexrevtemp) do
		if price then return price end
	end
end

function Scan:GetPrices(itemid)
	local data = self.data and self.data[self.data.today]
	if not data then return nil,"no data for today at all" end
	local itemdata = data[itemid]
	if not itemdata then return nil,"no data for item" end
	return itemdata
end

function Scan:CreateWorkFrame()
	local CHAIN=ZGV.ChainCall
	self.FWORK = CHAIN(CreateFrame("FRAME","ZGGoldScanWork"))
		:RegisterEvent("AUCTION_HOUSE_SHOW") --
		:RegisterEvent("AUCTION_HOUSE_CLOSED") --

		:RegisterEvent("AUCTION_HOUSE_BROWSE_RESULTS_UPDATED")
		:RegisterEvent("AUCTION_HOUSE_BROWSE_RESULTS_ADDED")
		:RegisterEvent("COMMODITY_SEARCH_RESULTS_ADDED")
		:RegisterEvent("COMMODITY_SEARCH_RESULTS_UPDATED")
		:RegisterEvent("ITEM_SEARCH_RESULTS_ADDED")
		:RegisterEvent("ITEM_SEARCH_RESULTS_UPDATED")

		:RegisterEvent("AUCTION_HOUSE_NEW_RESULTS_RECEIVED")

		:RegisterEvent("REPLICATE_ITEM_LIST_UPDATE")
		:RegisterEvent("CHAT_MSG_ADDON")
		:SetScript("OnEvent",Scan.EventHandler)
		:SetScript("OnUpdate",Scan.UpdateHandler)
		:Hide()
		.__END
end










local delay,interval=0, 0.5
function Scan.UIFrameOnUpdate(frame,elapsed)
	if not Scan.enabled then return end
	delay=delay+elapsed  if delay>interval then delay=0 else return end

	local s=Scan.state

	local canMass,when = Scan:CanScanFast()
	frame.ScanButton:SetEnabled(canMass and Scan.state=="SS_IDLE")
	frame.ScanButton:SetAlpha((canMass and Scan.state=="SS_IDLE" and 1) or 0.7)

	-- state
	if Scan.state=="SS_IDLE" then s="Zygor Scan" 
 	elseif Scan.state=="SS_QUERYING" then  Scan.queryspin=(Scan.queryspin+1)%5  s="Querying" .. strrep(".",Scan.queryspin+1)
	elseif Scan.state=="SS_ANALYZING" then  s=("Analyzing (%d%%)"):format((Scan.analysis_progress or 0)*100)
	elseif Scan.state=="SS_SCANNING" then  s=("Scanning (%d%%)"):format((Scan.scan_progress  or 0)*100)
	end
	frame.ScanButton:SetText(s)

end

function Scan.UIFrameOnShow(frame)
end

function Scan.UIFrameOnEvent(frame,event,arg1,arg2)
	if event=="AUCTION_HOUSE_SHOW" then
		Scan:ShowScanButton()
	elseif event=="AUCTION_HOUSE_CLOSED" then
		--frame:Hide()
	end
	--Scan.UIFrameOnUpdate(frame,999)
end

function Scan:CreateUIFrame()
	do return end
	local FONT=ZGV.Font
	local CHAIN=ZGV.ChainCall

	local function SkinData(property)  return ZGV.UI.SkinData(property)  end

	self.FUI=CHAIN(CreateFrame("FRAME","ZGGoldScanUI",UIParent))
		:SetSize(170,20)
		:SetFrameStrata("DIALOG")
		:SetBackdrop(SkinData("MoneyBackdrop"))
		:SetBackdropColor(unpack(SkinData("MoneyBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("MoneyBackdropBorderColor")))
		:RegisterEvent("AUCTION_HOUSE_SHOW") --
		:RegisterEvent("AUCTION_HOUSE_CLOSED") --
		:SetScript("OnDragStart",function(self) self:StartMoving() end)
		:SetScript("OnDragStop",function(self) self:StopMovingOrSizing() end)
		:SetScript("OnEvent",Scan.UIFrameOnEvent)
		:SetScript("OnUpdate",Scan.UIFrameOnUpdate)
		:SetScript("OnShow",Scan.UIFrameOnShow)
		:Show()
		.__END
		--:RegisterEvent("PLAYER_ENTERING_WORLD")

	self.FUI.ScanButton = CHAIN(ZGV.UI:Create("Button",self.FUI))
		:SetAllPoints()
		:SetText("Zygor Scan")
		:SetScript("OnClick",function() Scan:ScanFast() end)
		:Show()
		:SetPushedBackdropColor(unpack(SkinData("Accent")))
	.__END
end

function Scan:ShowScanButton()
	Scan.FUI:SetParent(AuctionHouseFrame)
	Scan.FUI:SetPoint("RIGHT",AuctionHouseFrameCloseButton,"LEFT", 0,0)
end

function Scan:DebugItem(id)
	local typ
	if not id then
		typ,id = GetCursorInfo()
		if typ~="item" then ZGV:Debug("&scan Cursor has no item.") return end
	end

	ZGV:Debug("&scan Debug for item #%s",id)

	local data = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items and ZGV.Gold.servertrends.items[id]
	if data then
		if next(data) then
			ZGV:Debug("&scan Server data: health %d, q %d-%d, p %s-%s,",data.health,data.q_lo,data.q_hi,ZGV.GetMoneyString(data.p_lo or -1),ZGV.GetMoneyString(data.p_hi or -1))
		else
			ZGV:Debug("&scan Server data: NONE!?")
		end
	else
		ZGV:Debug("&scan No server data for item")
	end

	if  ZGV.db.realm.gold_scan_data
	and ZGV.db.realm.gold_scan_data[1]
	and ZGV.db.realm.gold_scan_data[1][id] then
		--ZGV:Debug("&scan AH data:")
		local count=0
		for k,v in pairs(ZGV.db.realm.gold_scan_data[1][id]) do
			--ZGV:Debug("&scan "..k..","..v)
			count=count+1
		end
		ZGV:Debug("&scan Item debug: %d postings.",count)
	else
		ZGV:Debug("&scan Item debug: No postings for item.")
	end

	ZGV:Debug("&scan ZGV.Gold.Scan:GetPrice :")
	ZGV:Debug("&scan  %s",ZGV.GetMoneyString(Scan:GetPrice(id)))

end

function Scan:Debug(s,...)
	return ZGV:Debug("&gold &scan &_SUB "..s,...)
end


function Scan:Crash()
	self:SetState("SS_CRASHED")
end



function Scan:ImportHourly()
	if not ZGV_IMPORT_HOURLY_TIME then return nil,"No hourly to import" end
	if ZGV_IMPORT_HOURLY_TIME<(ZGV.db.realm.LastScan or 0) then return nil,"Current scan is newer than hourly" end
	ZGV.db.realm.gold_scan_data = {[1]={},today=1}

	for itemid,itemdata in pairs(ZGV_IMPORT_HOURLY_DATA) do
		for buyout,quantity in pairs(itemdata) do
			ZGV.db.realm.gold_scan_data[1][itemid]=ZGV.db.realm.gold_scan_data[1][itemid] or {}

			if type(quantity)=="table" then -- item varian array
				for bo,qa in pairs(quantity) do
					ZGV.db.realm.gold_scan_data[1][itemid][bo] = (ZGV.db.realm.gold_scan_data[1][itemid][bo] or 0) + qa
				end
			else
				ZGV.db.realm.gold_scan_data[1][itemid][buyout] = (ZGV.db.realm.gold_scan_data[1][itemid][buyout] or 0) + quantity
			end
		end
	end

	ZGV.db.realm.LastScan = ZGV_IMPORT_HOURLY_TIME

	if ZGV_IMPORT_HOURLY_INTERVAL then
		-- round to next full minute
		ZGV_IMPORT_HOURLY_INTERVAL_ROUNDED = math.ceil(ZGV_IMPORT_HOURLY_INTERVAL/60)*60
	end

	if ZGV_IMPORT_HOURLY_INTERVAL and (ZGV.db.char.gold_new_data_used or 0)<ZGV_IMPORT_HOURLY_TIME then
		-- we have some new data, wipe next expected popup time, set used data to current
		ZGV.db.char.gold_new_data_next = ZGV_IMPORT_HOURLY_TIME + ZGV_IMPORT_HOURLY_INTERVAL_ROUNDED
		ZGV.db.char.gold_new_data_used = ZGV_IMPORT_HOURLY_TIME
	end

	local date = C_DateAndTime.GetCalendarTimeFromEpoch(ZGV.db.realm.LastScan*1000000)
	ZGV:Print(("Gold Guide: Loaded 'Hourly' data scanned at %04d-%02d-%02d %02d:%02d."):format(date.year,date.month,date.monthDay,date.hour,date.minute))
end

local hourly_intervals = {
	EU=40, US=80, KR=10, TW=10
}
function Scan:EstimateTimeUntilHourly()
	local region = GetCVar("portal")
	local interval = hourly_intervals[GetRealmName()] or hourly_intervals[region] or 60
	local last_time = ZGV_IMPORT_HOURLY_TIME
	local next_time = last_time + interval*60
	return next_time-time()
end



--== PROXY
	local lqkeys={name=1, minLevel=2, maxLevel=3, page=4, isUsable=5, qualityIndex=6, getAll=7, exactMatch=8, filterData=9}
	local lqmeta = { __index = {
		Get=function(t,key) return t[lqkeys[key] or 0] end,
		Set=function(t,key,val) t[lqkeys[key] or 0]=val end,
	}}
	Scan.Proxy.lastQuery = {"",nil,nil,0}
	setmetatable(Scan.Proxy.lastQuery,lqmeta)

	function Scan.Proxy:PerformQuery(name, minLevel, maxLevel, page, isUsable, qualityIndex, getAll, exactMatch, filterData)
		if not name then return end
		self.lastQuery = {name, minLevel, maxLevel, tonumber(page), isUsable, qualityIndex, getAll, exactMatch, filterData}
		setmetatable(self.lastQuery,lqmeta)

		ZGV:Debug("&scan |cffffaaffPerforming Query: \"|cffffffff%s|r\", page |cffffddff%d|r, exact? %s, all? %s",name,page+1,exactMatch and "YES" or "no", getAll and "YES" or "no")
		if getAll then
			C_AuctionHouse.ReplicateItems()
			Scan.get_links = true
		else
			QueryAuctionItems(unpack(self.lastQuery))
			self:UpdateDefaultUI()
		end
	end

	function Scan.Proxy:GoToPage(page)
		self.lastQuery:Set("page",page)
		self:PerformQuery(unpack(self.lastQuery))
	end

	function Scan.Proxy:GetCurrentPage()
		return self.lastQuery:Get("page")
	end

	function Scan.Proxy:IsFullScan()
		return self.lastQuery:Get("getAll")
	end

	function Scan.Proxy:UpdateDefaultUI()
		local name = self.lastQuery:Get("name")
		local page = self.lastQuery:Get("page")

		BrowseName:SetText(name)

		AuctionFrameBrowse.page = page
		FauxScrollFrame_SetOffset(BrowseScrollFrame,0)

		--[[
		AuctionFrameBid.page = page
		FauxScrollFrame_SetOffset(BidScrollFrame,0)

		AuctionFrameAuctions.page = page
		--]]
	end

	function Scan.Proxy:UpdateFromDefaultUI()
		self.lastQuery:Set("name",BrowseName:GetText())
		self.lastQuery:Set("page",AuctionFrameBrowse.page)
	end
--==
