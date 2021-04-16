local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local FONTSTATUS="Fonts\\ARIALN.TTF"
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ZGVG=ZGV.Gold
local TRENDS_OLD = 24 * 4 --h

local Appraiser

if not ZGV.Gold.Appraiser then
	Appraiser = {}
	ZGV.Gold.Appraiser = Appraiser
else
	Appraiser = ZGV.Gold.Appraiser 
end

local CHAIN = ZGV.ChainCall
local ui = ZGV.UI
local SkinData = ui.SkinData

local Scan = ZGV.Gold.Scan

local HEADER_HEIGHT = 30		-- exported to GoldHelp.lua
local FOOTER_HEIGHT = 25
local SCROLL_WIDTH=15		-- read only


local BUY_INVENTORY_COLUMS = {
	{ title="", width=12, headerwidth=15, padding=3, titlepadding=4, titlej="LEFT", textj="LEFT", name="toggle", type="toggle", },
	{ title="", width=15, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) Appraiser:ShowItemTooltip(row.item) end},
	{ title="ITEM", width=170, titlej="LEFT", textj="LEFT", name="name" },
	{ title="MAX PRICE", width=120, titlej="RIGHT", textj="RIGHT", name="price" },
}

local BUY_INVENTORY_DATA = {
	ROW_COUNT = 19,
	LIST_WIDTH = 360,
	LIST_HEIGHT = 440,
	POSX = 8,
	POSY = -8,
	STRATA = "HIGH",
	HIDESCROLLBAR = true,
}


local DROPDOWN_STYLE=2

local lastUpdate
function Appraiser:Update()
	if not self.MainFrame then return end
	if not self.MainFrame:IsVisible() then return end
	if lastUpdate==GetTime() then return end  -- not twice per frame, please.
	lastUpdate=GetTime()

	local ShoppingList = Appraiser.Buy_Frame.ShoppingList

	self.lastUpdated = debugprofilestop()

	if Appraiser.MainFrame.hideTooltip then
		GameTooltip:Hide()
		Appraiser.MainFrame.hideTooltip = false
	end

	local rowoff=0

	self.SellItems = self.SellItems or {}
	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}

	-- Adding items from guide moved to guide step entry
	
	-- Merge into single table, maintaining order in which items were added
	self.ShoppingItems = {}
	local indexMerged = 1
	for indexBuy = 1,#ZGV.db.char.GGbuyitems do
		self.ShoppingItems[indexMerged] = ZGV.db.char.GGbuyitems[indexBuy]
		local tempitem = self.ShoppingItems[indexMerged]
		if not (tempitem.displayName or tempitem.name) then 
			tempitem.name, _, _, _, _, _, _, _, _, tempitem.icon = ZGV:GetItemInfo(tempitem.itemid)
		end
		indexMerged = indexMerged + 1
	end

	-- Sort

	-- Display
	if #self.ShoppingItems==0 then 
		Appraiser.MainFrame:Hide()
	else
		Appraiser.MainFrame:Show()
	end

	local SL_RowNum=0

	local SHOPPING_ROW_COUNT = ShoppingList:CountRows()

	--- Shopping section ---------------------------------------------------------------------------------
	Appraiser.ShoppingOffset = max(0,min(Appraiser.ShoppingOffset,#self.ShoppingItems-SHOPPING_ROW_COUNT))
	IL_RowOff=Appraiser.ShoppingOffset
	for ii,invItem in ipairs(self.ShoppingItems) do 
		SL_RowNum = ii-IL_RowOff
		if SL_RowNum>0 and SL_RowNum<SHOPPING_ROW_COUNT+1 then 
			local row = ShoppingList.rows[SL_RowNum]
			row.back:SetTexture()
			--row.remove:Show()

			row.icon:SetTexture(invItem.icon)
			color = ""
			if invItem.quality then
				local _,_,_, hex = GetItemQualityColor(invItem.quality);
				color="|c"..hex
			end
			--local pricetext,pricealpha,tooltip = Appraiser:GetShoppingItemStatus(invItem)
			row.price:SetText(ZGV.GetMoneyString(tonumber(invItem.priceMax)))
			row.tooltip = tooltip
			
			row.name:SetText((invItem.count or "").." "..color..(invItem.displayName or invItem.name or "..."))

			if invItem.active then
				row:SetNormalBackdropColor(0.3,0.3,0.3,1)
			else
				row:SetNormalBackdropColor(0,0,0,0)
			end
			row:Enable()

			row.toggle:SetToggle(not not invItem.selected,true)

			if invItem.active then
				row:SetNormalBackdropColor(0.3,0.3,0.3,1)
			else
				row:SetNormalBackdropColor(0,0,0,0)
			end


			row.item = invItem
			row:Show()
		end
	end
	ShoppingList.scrollbar:TotalValue(#self.ShoppingItems)
	ShoppingList.scrollbar:SetValue(IL_RowOff)

	for r=SL_RowNum+1,SHOPPING_ROW_COUNT do ShoppingList.rows[r]:Hide() end

	self.needToUpdate = false
end

function Appraiser:UpdateTimeStamp()
	if not self.MainFrame then return end
	if not self.lastScanTime then self.lastScanTime = time() end

	local timestamptext,updateTitletext,lastScanStr


	if ZGVG.Scan.db.realm.LastScan then
		updateTitletext = "LAST UPDATED:"
		local hourly_interval = locale_hourly_intervals[GetLocale()] or 1
		if ZGV.do_hourly_intervals then
			timestamptext = ("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,hourly_interval*3600*2,hourly_interval*3600), ui.GetTimeStamp(ZGV.db.realm.LastScan))
		else
			timestamptext = ("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,3600*2,60*10), ui.GetTimeStamp(ZGV.db.realm.LastScan))
		end
		if time()-ZGV.db.realm.LastScan > 3600*2 then
			timestamptext = timestamptext .. "|r - " .. L["gold_app_old_scan_data"]
		end
	else
		updateTitletext = "|cffff0000ALERT:|r"
		timestamptext = L["gold_app_no_scan_data"]
	end

	if not ZGV.Gold.guides_loaded then
		updateTitletext = "|cffff0000ALERT:|r"
		timestamptext = L["gold_app_no_goldguide"]
	elseif not (ZGV.Gold.servertrends and ZGV.Gold.servertrends.date) then
		updateTitletext = "|cffff0000ALERT:|r"
		timestamptext = L["gold_app_no_servertrends"]
	elseif ZGV.Gold.servertrends.date then
		local timeSinceLast = time() -  ZGV.Gold.servertrends.date

		if timeSinceLast > TRENDS_OLD * 3600 then	-- Data is old
			updateTitletext = "|cffff0000ALERT:|r"
			timestamptext = L["gold_app_old_servertrends"]:format(ui.GetTimeStamp(tonumber(ZGV.Gold.servertrends.date)))
		end
	end

	local Scan = ZGV.Gold.Scan


	local page_text = ""
	--[[
	if Appraiser.oldstate ~= ZGV.Gold.Scan.state then
		Appraiser.oldstate = ZGV.Gold.Scan.state
		if Appraiser.oldstate == "SS_QUERYING" then
			Appraiser.pagenum = (Appraiser.pagenum or 0) + 1
		end
	end
	if Appraiser.pagenum then
		page_text = " - page "..Appraiser.pagenum
	end
	--]]
	if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) and Scan.scan_pages>1 then
		page_text = (" - page %d of %d"):format(Scan.scan_page,Scan.scan_pages)
	end
	--page_text = Scan.scan_page

	local data_text = "All auctions"
	if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
		data_text = (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) or ""
	elseif self.manualScanning then
		data_text = self.manualScanningName or ""
		page_text = ""
	elseif self.UpdateScanRunningName then
		data_text = self.UpdateScanRunningName
		page_text = ""
	elseif self.BuyOutSearchName then
		data_text = self.BuyOutSearchName
		page_text = ""
	end


	local progress_dots = math.floor((debugprofilestop()-Scan.last_scan_start_time)%2000 / 500)+1  -- 1..4
	local progress = string.rep(".",progress_dots)
	local preprogress = ""

	if not (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
		-- long scan, provide progress %
		if Scan.state =="SS_SCANNING" then
			progress = (" %d%%"):format((Scan.scan_progress or 0)*100)
		elseif Scan.state =="SS_ANALYZING" then
			progress = (" %d%%"):format((Scan.analysis_progress or 0)*100)
		end
	elseif self.manualScanning then
		preprogress = ("%d/%d: "):format(self.manualScanningDone,self.manualScanningTotal)
	elseif self.manualBuyScanning then
		preprogress = ("%d/%d: "):format(self.manualBuyScanningDone,self.manualBuyScanningTotal)
	end

	if Scan.state == "SS_QUERYING" then
		updateTitletext = "|cffff0000SCANNING:|r"
		if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
			timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 1/3: querying]" or "") .. progress
		else
			timestamptext = preprogress .. data_text .. (ZGV.db.profile.debug_display and " [stage 1/3: querying]" or " (initiating)") .. progress
		end
	elseif Scan.state =="SS_RECEIVING" then
		-- stage deprecated.
		--updateTitletext = "|cffff0000SCANNING:|r"
		--timestamptext = data_text .. page_text .. " (stage 2/4: receiving)" .. progress
	elseif Scan.state =="SS_SCANNING" then
		updateTitletext = "|cffff0000SCANNING:|r"
		timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 2/3: scanning]" or "") .. progress
	elseif Scan.state =="SS_ANALYZING" then
		updateTitletext = "|cffff0000SCANNING:|r"
		timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 3/3: analyzing]" or "") .. progress
	elseif Appraiser.ScanIsRunning or Appraiser.ActiveShoppingAddItem or (Appraiser.ScanItems and next(Appraiser.ScanItems)) then
		-- show Analyzing to avoid idle flashes
		updateTitletext = "|cffff0000SCANNING:|r"
		timestamptext = preprogress .. data_text .. page_text .. " (awaiting next item)" .. progress
	elseif Scan.state =="SS_IDLE" then
	end

	if ZGV.db.profile.debug_display then  updateTitletext = updateTitletext .. " [" .. Scan.state .. ", " .. (Appraiser.manualScanning and "manual " or "") .. (Appraiser.manualBuyScanning and "manualbuy " or "") .. "]"  end

	self.MainFrame.FooterUpdated:SetText(updateTitletext)
	self.MainFrame.FooterUpdatedTime:SetText(timestamptext)
end

local last_pages=0
function Appraiser:UpdateProgressBar()
	local pf = self.MainFrame.progressFrame

	local scanprogress
	local Scan = ZGV.Gold.Scan
	if Scan.state=="SS_QUERYING" then
		scanprogress=0.1
	elseif Scan.state=="SS_NEEDTOQUERY" then
			scanprogress=0.1
	elseif Scan.state=="SS_RECEIVING" then
		scanprogress=0.1
	elseif Scan.state=="SS_SCANNING" then
		scanprogress=0.1+0.8*(Scan.scan_progress or 0) -- 10 to 90
		--[[
		local total_pages = math.ceil((Scan.total_count or 0)/50)
		if total_pages and total_pages>0 then
			local current_page = Scan.scan_page or 0
			pf:SetPercent(current_page/total_pages*100)
		else
			pf:SetPercent(0)
		end
		--]]
	elseif Scan.state =="SS_ANALYZING" then
		scanprogress=0.9+0.1*(Scan.analysis_progress or 0) -- 90 to 100
	else
		scanprogress=0
	end

	--print(("msd=%d mst=%d mbsd=%d mbst=%d  %s + scanprogress %.1f"):format(self.manualScanningDone or -1,self.manualScanningTotal or -1, self.manualBuyScanningDone or -1,self.manualBuyScanningTotal or -1,Scan.state,scanprogress))

	if Scan.scan_pages and Scan.scan_pages>0 then last_pages=Scan.scan_pages end -- make sure it doesn't reset to 0. Just reuse the last value...
	local page=max(1,Scan.scan_page)
	local pages=max(page,last_pages)

	--if self.ActiveTab == "Inventory" then
		if self.manualScanning then
			if Scan.state=="SS_IDLE" then scanprogress=0.9 end  -- SS_IDLE happens AFTER a scan, not before
			if pages>1 and pages<1000 then scanprogress = (((page-2)/pages) + (1/pages))*scanprogress end
			pf:SetPercent(((self.manualScanningDone-1+scanprogress)/self.manualScanningTotal) * 100,"nozero")
		elseif self.manualBuyScanning then
			if Scan.state=="SS_IDLE" then scanprogress=0.9 end
			if pages>1 and pages<1000 then scanprogress = (((page-2)/pages) + (1/pages))*scanprogress end
			pf:SetPercent(((self.manualBuyScanningDone-1+scanprogress)/self.manualBuyScanningTotal) * 100,"nozero")
		elseif pages>1 and pages<1000 and (Scan.state=="SS_QUERYING" or Scan.state=="SS_NEEDTOQUERY" or Scan.state=="SS_RECEIVING" or Scan.state=="SS_SCANNING" or Scan.state=="SS_ANALYZING") then
			scanprogress = (((page-2)/pages) + (1/pages))
			pf:SetPercent(scanprogress*100,"nozero")
		else
			pf:SetPercent(scanprogress*100,"nozero")
		end
	--else
--		pf:SetPercent(0)
--	end
end

local function UpdateHandler(frame, elapsed)
	local self=Appraiser
	if not self.MainFrame then return end
	if not self.MainFrame:IsVisible() then return end

	self.MainFrame:SetFrameLevel(AuctionHouseFrame:GetFrameLevel()+1)

	local now = debugprofilestop()
	local refreshRate = (self.SellingInProgress and 100 or 5000)
	if self.needToUpdate or now-self.lastUpdated>refreshRate then
		self:Update()
	end

	self:UpdateTimeStamp()
	self:UpdateProgressBar()

end

function Appraiser.EventHandler(frame, event, ...)
	self=Appraiser

	if event=="AUCTION_HOUSE_SHOW" then
		Appraiser:CreateMainFrame()
	end
	if not Appraiser.MainFrame or not Appraiser.MainFrame:IsVisible() then return end

	if event=="AUCTION_HOUSE_CLOSED" then
		Appraiser:HideWindow()
	end

	if event=="AUCTION_HOUSE_BROWSE_RESULTS_UPDATED" then
		Appraiser:DisplayBuyItem()
	end
end

function Appraiser:CreateTrackerFrame()
	-- Separate frame for events because Appraiser's own frame doesn't exist until it's first shown.
	Appraiser.Events = CreateFrame("Frame")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_BROWSE_RESULTS_UPDATED")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_SHOW")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_CLOSED")
	Appraiser.Events:SetScript("OnEvent",Appraiser.EventHandler)
	Appraiser.Events:SetScript("OnUpdate",UpdateHandler)
end

function Appraiser:IsInCurrentDeals(id)
	for indexBuy,v in pairs(ZGV.db.char.GGbuyitems) do
		if v.itemid==id then return true end
	end
	return false
end

function Appraiser:AddGuideItemsToBuy()
end

function Appraiser:AddItemToBuy(itemid,count,source,priceMax,itemlink,sourcemode)
	if not itemid and not itemlink then return end
	if self:IsInCurrentDeals(itemid) then return end

	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}

	if not itemid and string.match(itemlink,"battlepet:") then itemid = ZGV.PetBattle:GetPetFakeIdByLink(itemlink) end

	local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, icon, vendorPrice, classID, subclassID = ZGV:GetItemInfo(itemid)
	
	if itemid and not itemlink then
		name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, icon, vendorPrice, classID, subclassID = ZGV:GetItemInfo(itemid)
	end

	if itemid == 82800 or classID==2 or classID==4 then
		-- lock pets and equipment to 1 per posting, to prevent blizzard ah posting random items
		single_locked=true
		maxStack=1
	end

	if itemid>1000000000 then 
		petItem_id = tonumber(string.sub(tostring(itemid),2,5))
		quality = tonumber(string.sub(tostring(itemid),8,8))
		name, icon = C_PetJournal.GetPetInfoBySpeciesID(petItem_id)
	end

	local unit_price = ZGV.Gold.Scan:GetPrice(itemid)

	local statusIcon, statusText, statusId, statusText,statusIcon,isStagnant,statusColor
	local priceStatus = ZGVG:GetPriceStatus(petItem_id or itemid,unit_price)
	statusId = priceStatus.statusId
	statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.buysuggestion)
	statusIcon = priceStatus.buyicon or priceStatus.icon -- coords
	isStagnant = priceStatus.stagnant
	statusColor = isStagnant and priceStatus.stagcolor or priceStatus.buycolor

	local existing_count = 0
	local existing_index

	local targetTable = ZGV.db.char.GGbuyitems

	for index,item in pairs(targetTable) do
		if item.itemid == itemid then
			existing_index = index
			existing_count = item.count
		end
	end

	if existing_index then
		targetTable[existing_index].count = count
	else
		local newitem = {
			itemid=itemid or petItem_id,
			name=name,
			displayName=displayName,
			--link=link,
			icon=icon,
			count=count, 
			price=unit_price,
			source=source, --guide/gold/manual
			priceMax=priceMax, -- function parameter
			statusText=statusText,
			statusIcon=statusIcon,
			statusId=statusId,
			statusColor=statusColor,
			isStagnant=isStagnant,
			quality=quality,
			sourcemode=sourcemode,
			itemlink=itemlink,
			classID=classID,
			single_locked=single_locked
		}
		table.insert(targetTable,newitem)
	end

	if name then
		ZGV.NotificationCenter.AddButton(
		    "",
		   "Shopping list",
		    (count or "").." "..name..((count and count>1) and "s" or ""),
		    ZGV.DIR.."\\Skins\\guideicons-big",
		    {0, 0.25, 0.25, 0.50},
		    nil,
		    nil,
		    1,
		    poptime,        -- nil atm
		    removetime,        -- nil atm
		    nil,            -- nil atm
		    nil,            -- nil atm
		    "gold")
	end

	-- deactivate current row and remove item from buyout clipboard
	-- prevents wrong row from being highlighted

	if Appraiser.MainFrame then
		for i,r in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do
			r.active = false
		end
	end
	
	Appraiser.SelectedShoppingItem = nil
	self.needToUpdate = true
	ZGV.Goldguide:Update()
end


function Appraiser:RemoveItemsFromList()
	for ii,invItem in ipairs(self.ShoppingItems) do 
		if invItem.selected then
			for i,v in pairs(ZGV.db.char.GGbuyitems) do
				if v.itemid==invItem.itemid then
					table.remove(ZGV.db.char.GGbuyitems,i)
				end
			end
		end
	end

	self.needToUpdate = true
end


function Appraiser:ApplySkin()
	local MF = self.MainFrame 
	if not MF then return end

	MF:ClearAllPoints()
	MF:SetBackdropColor(unpack(SkinData("MainBackdropColor")))

	MF.HeaderFrame:SetBackdropColor(unpack(SkinData("AuctionToolsHeaderFooterBackground")))
	MF.HeaderFrame:SetBackdropBorderColor(0,0,0,0)


	MF.FooterFrame:SetBackdropColor(unpack(SkinData("AuctionToolsHeaderFooterBackground")))
	MF.FooterFrame:SetBackdropBorderColor(0,0,0,0)

	MF.ContentFrame:SetBackdropColor(ZGV.F.HTMLColor("#222222ff"))
	MF.ContentFrame:SetPoint("LEFT",MF,"LEFT",SkinData("AuctionToolsMargin"),0)
	MF.ContentFrame:SetPoint("RIGHT",MF,"RIGHT",-SkinData("AuctionToolsMargin"),0)

	MF.progressFrame:SetTexture(SkinData("ProgressBarTextureFile"))
	MF.progressFrame:SetDecor(SkinData("ProgressBarDecorUse"))
end

function Appraiser:CreateMainFrame()
	if self.MainFrame then return end

	self.MainFrame = CHAIN(ui:Create("Frame",AuctionHouseFrame,"ZygorAppraiser"))
		:SetFrameStrata("HIGH")
		:SetFrameLevel(AuctionHouseFrame:GetFrameLevel()+1)
		:SetToplevel(enable)
		:SetWidth(378)
		.__END

	local MF = self.MainFrame 
	MF:ClearAllPoints()
	MF:SetPoint("TOPLEFT",AuctionHouseFrame,"TOPRIGHT",1,1)
	MF:SetPoint("BOTTOMLEFT",AuctionHouseFrame,"BOTTOMRIGHT",1,1)

	if not ZGV.db.profile.gold_shopping_enable then MF:Hide() end

	-- Header
	MF.HeaderFrame = CHAIN(ui:Create("Frame",MF))
		:SetPoint("TOPLEFT",1,-1)
		:SetPoint("TOPRIGHT",-1,-1)
		:SetHeight(HEADER_HEIGHT)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+2)
		:SetToplevel(enable)
		.__END

		MF.HeaderFrame.Logo = CHAIN(MF.HeaderFrame:CreateTexture())
			:SetPoint("TOP",MF.HeaderFrame,"TOP",0,-3) 
			:SetSize(100,25)
			:SetTexture(SkinData("TitleLogo"))
		.__END

		MF.HeaderFrame.Title = CHAIN(MF.HeaderFrame:CreateFontString())
			:SetPoint("TOPLEFT",8,-8)
			:SetFont(FONT,14) 
			:SetTextColor(unpack(SkinData("TabSelectedColor")))
			:SetText("Shopping")
		 .__END

		MF.HeaderFrame.close = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",-5,-5)
			:SetSize(17,17)
			:SetScript("OnClick", function() Appraiser:HideWindow() end)
			.__END
		ZGV.F.AssignButtonTexture(MF.HeaderFrame.close,(SkinData("TitleButtons")),6,32)

		--[[
		MF.HeaderFrame.info = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",MF.HeaderFrame.close,"TOPLEFT",-5,0)
			:SetSize(17,17)
			:SetScript("OnClick", function() Appraiser:ToggleHelpPage() end)
			.__END
		ZGV.F.AssignButtonTexture(MF.HeaderFrame.info,(SkinData("TitleButtons")),18,32)
		--]]

		MF.HeaderFrame.goldguide = CHAIN(CreateFrame("Button", "ZA_Menu_GoldGuide" , MF.HeaderFrame))
			:SetSize(17,17)
			--:SetPoint("TOPRIGHT",MF.HeaderFrame.info,"TOPLEFT",-5,0)
			:SetPoint("TOPRIGHT",MF.HeaderFrame.close,"TOPLEFT",-5,0)
			:SetScript("OnClick", function() ZGV.Goldguide:Initialise() end)
			:SetScript("OnEnter",function()
				GameTooltip:SetOwner(MF.HeaderFrame.goldguide, "ANCHOR_CURSOR")
				GameTooltip:AddLine("Open Gold Guide")
				GameTooltip:Show()
			end)
			:SetScript("OnLeave",function()
				GameTooltip:FadeOut()
			end)
			:Show()
		.__END
		ZGV.F.AssignButtonTexture(MF.HeaderFrame.goldguide,(SkinData("TitleButtons")),22,32)


	MF.ContentFrame = CHAIN(ui:Create("Frame", MF))
		:SetPoint("LEFT",MF,"LEFT")
		:SetPoint("RIGHT",MF,"RIGHT")
		:SetHeight(480)
		:Show()
	.__END


	local container = CHAIN(CreateFrame("Frame", "ZA_Buy_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	--------- Inventory list ---------
	container.ShoppingList = ui:Create("ScrollTable",container,"ZA_Shopping_Inventory",BUY_INVENTORY_COLUMS,BUY_INVENTORY_DATA)

	container.ShoppingList:SetScript("OnMouseWheel", function(self,delta)
		Appraiser.ShoppingOffset=Appraiser.ShoppingOffset-delta
		Appraiser.needToUpdate=true
		Appraiser.MainFrame.hideTooltip=true
	end)
	container.ShoppingList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Appraiser.ShoppingOffset=math.round(offset)
		Appraiser.needToUpdate=true
	end)

	for _,row in pairs(container.ShoppingList.rows) do
		row:SetScript("OnClick",function(self,button)
			if row.item then
				if button == "LeftButton" then
					Appraiser:ActivateBuyItem(row.item)
				elseif button == "RightButton" then
					Appraiser:ShoppingRowMenu(row)
				end
			end
		end)
		row.toggle:RegisterToggleCallback(function()
			row.item.selected = row.toggle:IsChecked()
			Appraiser.needToUpdate = true
		end)
	end

	local containerDetails = CHAIN(CreateFrame("Frame", nil, container ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END
	container.containerDetails=containerDetails

	Appraiser.Buy_Frame = container

	container.DeleteButton = CHAIN(ui:Create("Button",container))
		:SetSize(85,20)
		:SetPoint("BOTTOMRIGHT",-10,5)
		:SetFont(FONT,14)
		:SetText("Remove")
		:SetScript("OnClick", function() Appraiser:RemoveItemsFromList() end)
	.__END


	MF.FooterFrame = CHAIN(ui:Create("Frame",MF,"ZygorAppraiserFooter"))
		:SetPoint("TOPLEFT",MF.ContentFrame,"BOTTOMLEFT")
		:SetPoint("TOPRIGHT",MF.ContentFrame,"BOTTOMRIGHT")
		:SetHeight(FOOTER_HEIGHT)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+1)
		:SetToplevel(enable)
		.__END
		MF.FooterUpdated = CHAIN(MF.FooterFrame:CreateFontString())
			:SetPoint("BOTTOMLEFT",5,5)
			:SetFont(FONTBOLD,12)
			:SetText("LAST UPDATED:")
		.__END

		MF.FooterUpdatedTime = CHAIN(MF.FooterFrame:CreateFontString())
			:SetPoint("LEFT",MF.FooterUpdated ,"RIGHT",5,0)
			:SetFont(FONT,12)
			:SetText("no time")
		.__END

		MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF.FooterFrame))
			:SetPoint("BOTTOMRIGHT",-5,5)
			:SetSize(15,15)
			:SetScript("OnClick",function() ZGV:OpenOptions() end)
		.__END
		ZGV.F.AssignButtonTexture(MF.FooterSettingsButton,(SkinData("TitleButtons")),5,32)

		MF.progressFrame = CHAIN(ui:Create("ProgressBar",MF.FooterFrame))
			:SetSize(MF:GetWidth(),7)
			:SetFrameStrata("HIGH")
			:SetFrameLevel(self.MainFrame:GetFrameLevel()+3)
			:SetPoint("TOP",MF.FooterFrame,"BOTTOM",0,-1)
			:SetDecor(SkinData("ProgressBarDecorUse"))
			:SetAnim(true)
		.__END

	--MF:Hide()
	--Appraiser:ApplySkin()
end

function Appraiser:HideWindow()
	ZGV.db.profile.gold_shopping_enable = false
	Appraiser.MainFrame:Hide()
end

function Appraiser:ShowWindow()
	ZGV.db.profile.gold_shopping_enable = true
	Appraiser.MainFrame:Show()
end
	
function Appraiser:ActivateBuyItem(item)
	local key = {battlePetSpeciesID=0, itemID=item.itemid, itemLevel=0, itemSuffix=0}
	local sortarr = {}
	Appraiser.ActiveItem = item
	for i,v in pairs(self.ShoppingItems) do v.active=false end
	item.active = true

	AuctionHouseFrame:SendBrowseQuery(item.name,0,0,{4,5,6,7,8,10,9})
end

function Appraiser:DisplayBuyItem()
	if not Appraiser.ActiveItem then return end
	local results = C_AuctionHouse.GetBrowseResults()

	for i,item in pairs(results) do
		if item.itemKey.itemID==Appraiser.ActiveItem.itemid then
			AuctionHouseFrame:QueryItem(15,item.itemKey,true)
			ZGV:ScheduleTimer(function() AuctionHouseFrame:SelectBrowseResult(item) end,0)			
			break
		end
	end
	Appraiser.ActiveItem = nil
	Appraiser:Update()
end


function Appraiser:ShowItemTooltip(item)
	if not item then return end

	local link = item.link or item.itemlink
	local BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName

	if link then 
		_,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(link,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")
	end

	if BattlePetId then -- battle pet
		BattlePetToolTip_Show(tonumber(BattlePetId), tonumber(BattlePetLevel), tonumber(BattlePetRarity), tonumber(BattlePetHP), tonumber(BattlePetAtt), tonumber(BattlePetSpeed), BattlePetName) 
		return 
	else
		if item.bag then 
			GameTooltip:SetBagItem(item.bag,item.slot) 
		elseif link then
			GameTooltip:SetHyperlink(link)
		else
			GameTooltip:SetItemByID(item.itemid) 
		end
	end
end

local function OldColor(timestamp,red,yellow)
	local age=time()-timestamp
	if age>red then
		return "ffff0000"
	elseif age>yellow then
		return "ffffee00"
	else
		return "ffffffff"
	end
end

local locale_hourly_intervals = {
	enUS = 2,
	esMX = 2,
	ptBR = 2,
	enGB = 1,
	frFR = 1,
	deDE = 1,
	ruRU = 1,
	itIT = 1,
	esES = 1,
	koKR = 0.5,
	zhTW = 0.5,
	zhCN = 0.5
}

function Appraiser:UpdateTimeStamp()
	if not self.MainFrame then return end
	if not self.lastScanTime then self.lastScanTime = time() end

	local timestamptext,updateTitletext,lastScanStr


	if ZGVG.Scan.db.realm.LastScan then
		updateTitletext = "LAST UPDATED:"
		local hourly_interval = locale_hourly_intervals[GetLocale()] or 1
		if ZGV.do_hourly_intervals then
			timestamptext = ("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,hourly_interval*3600*2,hourly_interval*3600), ui.GetTimeStamp(ZGV.db.realm.LastScan))
		else
			timestamptext = ("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,3600*2,60*10), ui.GetTimeStamp(ZGV.db.realm.LastScan))
		end
		if time()-ZGV.db.realm.LastScan > 3600*2 then
			timestamptext = timestamptext .. "|r - " .. L["gold_app_old_scan_data_short"]
		end
	else
		updateTitletext = "|cffff0000ALERT:|r"
		timestamptext = L["gold_app_no_scan_data_short"]
	end

	if not ZGV.Gold.guides_loaded then
		updateTitletext = "|cffff0000ALERT:|r"
		timestamptext = L["gold_app_no_goldguide_short"]
	elseif not (ZGV.Gold.servertrends and ZGV.Gold.servertrends.date) then
		updateTitletext = "|cffff0000ALERT:|r"
		timestamptext = L["gold_app_no_servertrends_short"]
	elseif ZGV.Gold.servertrends.date then
		local timeSinceLast = time() -  ZGV.Gold.servertrends.date

		if timeSinceLast > TRENDS_OLD * 3600 then	-- Data is old
			updateTitletext = "|cffff0000ALERT:|r"
			timestamptext = L["gold_app_old_servertrends_short"]:format(ui.GetTimeStamp(tonumber(ZGV.Gold.servertrends.date)))
		end
	end

	local Scan = ZGV.Gold.Scan


	local page_text = ""
	--[[
	if Appraiser.oldstate ~= ZGV.Gold.Scan.state then
		Appraiser.oldstate = ZGV.Gold.Scan.state
		if Appraiser.oldstate == "SS_QUERYING" then
			Appraiser.pagenum = (Appraiser.pagenum or 0) + 1
		end
	end
	if Appraiser.pagenum then
		page_text = " - page "..Appraiser.pagenum
	end
	--]]
	if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) and Scan.scan_pages>1 then
		page_text = (" - page %d of %d"):format(Scan.scan_page,Scan.scan_pages)
	end
	--page_text = Scan.scan_page

	local data_text = "All auctions"
	if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
		data_text = (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) or ""
	elseif self.manualScanning then
		data_text = self.manualScanningName or ""
		page_text = ""
	elseif self.UpdateScanRunningName then
		data_text = self.UpdateScanRunningName
		page_text = ""
	elseif self.BuyOutSearchName then
		data_text = self.BuyOutSearchName
		page_text = ""
	end


	local progress_dots = math.floor((debugprofilestop()-Scan.last_scan_start_time)%2000 / 500)+1  -- 1..4
	local progress = string.rep(".",progress_dots)
	local preprogress = ""

	if not (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
		-- long scan, provide progress %
		if Scan.state =="SS_SCANNING" then
			progress = (" %d%%"):format((Scan.scan_progress or 0)*100)
		elseif Scan.state =="SS_ANALYZING" then
			progress = (" %d%%"):format((Scan.analysis_progress or 0)*100)
		end
	elseif self.manualScanning then
		preprogress = ("%d/%d: "):format(self.manualScanningDone,self.manualScanningTotal)
	elseif self.manualBuyScanning then
		preprogress = ("%d/%d: "):format(self.manualBuyScanningDone,self.manualBuyScanningTotal)
	end

	if Scan.state == "SS_QUERYING" then
		updateTitletext = "|cffff0000SCANNING:|r"
		if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
			timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 1/3: querying]" or "") .. progress
		else
			timestamptext = preprogress .. data_text .. (ZGV.db.profile.debug_display and " [stage 1/3: querying]" or " (initiating)") .. progress
		end
	elseif Scan.state =="SS_RECEIVING" then
		-- stage deprecated.
		--updateTitletext = "|cffff0000SCANNING:|r"
		--timestamptext = data_text .. page_text .. " (stage 2/4: receiving)" .. progress
	elseif Scan.state =="SS_SCANNING" then
		updateTitletext = "|cffff0000SCANNING:|r"
		timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 2/3: scanning]" or "") .. progress
	elseif Scan.state =="SS_ANALYZING" then
		updateTitletext = "|cffff0000SCANNING:|r"
		timestamptext = preprogress .. data_text .. page_text .. (ZGV.db.profile.debug_display and " [stage 3/3: analyzing]" or "") .. progress
	elseif Appraiser.ScanIsRunning or Appraiser.ActiveShoppingAddItem or (Appraiser.ScanItems and next(Appraiser.ScanItems)) then
		-- show Analyzing to avoid idle flashes
		updateTitletext = "|cffff0000SCANNING:|r"
		timestamptext = preprogress .. data_text .. page_text .. " (awaiting next item)" .. progress
	elseif Scan.state =="SS_IDLE" then
	end

	if ZGV.db.profile.debug_display then  updateTitletext = updateTitletext .. " [" .. Scan.state .. ", " .. (Appraiser.manualScanning and "manual " or "") .. (Appraiser.manualBuyScanning and "manualbuy " or "") .. "]"  end

	self.MainFrame.FooterUpdated:SetText(updateTitletext)
	self.MainFrame.FooterUpdatedTime:SetText(timestamptext)
end

tinsert(ZGV.startups,{"Auctiontools core",function(self)
	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}
	for i,v in pairs(ZGV.db.char.GGbuyitems) do v.active=nil end

	Appraiser.ShoppingOffset=0
	Appraiser:CreateTrackerFrame()
	Appraiser.lastUpdated = 0
end})
