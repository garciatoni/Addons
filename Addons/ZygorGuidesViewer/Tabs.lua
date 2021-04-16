local name,ZGV = ...

ZGV.Tabs = {}

local Tabs = ZGV.Tabs
local CHAIN = ZGV.ChainCall
local ui = ZGV.UI
local SkinData = ui.SkinData
local L = ZGV.L
local FONT=ZGV.Font

local max_tabs_limit=30  -- hard limit on tab number, for sanity
	
Tabs.Pool = {}

-- update tabs layout when main zygor frame is resized
function Tabs:StartSizing()
	Tabs.ResizeTimer = ZGV:ScheduleRepeatingTimer(function() Tabs:ReanchorTabs() end, 0.01)
end

-- update tabs layout when main zygor frame is resized
function Tabs:StopMovingOrSizing()
	if Tabs.ResizeTimer then ZGV:CancelTimer(Tabs.ResizeTimer) end
end

local function tabs_update_handler(frame, elapsed)
	if not Tabs.ActiveTab then return end

	local now = debugprofilestop()
	if now-Tabs.lastUpdated<100 then return end

	Tabs.lastUpdated = now

	if ZGV.skipping then
		Tabs.ActiveTab:SetBusy(true)
	else
		Tabs.ActiveTab:SetBusy(false)
	end
end

function Tabs.AddButtonOnClick(self,button)
	if button=="RightButton" then
		ZGV.GuideMenu:Show("Suggested")
	else
		ZGV.GuideMenu:Show()
	end
	ZGV.GuideMenu.UseTab = nil
end

function Tabs.AddButtonOnEnter(self,button)
	GameTooltip:SetOwner(Tabs.AddButton, "ANCHOR_TOP")
	GameTooltip:SetText(ZGV.L['frame_selectguide'])
	GameTooltip:AddLine(ZGV.L['frame_selectguide_left'],0,1,0)
	GameTooltip:Show()
end

-- startup - create buttons, hook into zygor sizing functions, load saved tabs
function Tabs:Initialize()
	Tabs.AddButton = ZGV.Frame.Controls.TabsAddButton
	Tabs.MoreButton = ZGV.Frame.Controls.TabsMoreButton
	
	Tabs.RemainingMenu = CHAIN(CreateFrame("Frame",nil,Tabs.MoreButton))
		:SetPoint("TOPRIGHT",Tabs.MoreButton,"BOTTOMRIGHT")
		:SetFrameStrata("MEDIUM")
		:SetSize(1,1)
		:SetFrameLevel(ZGV.Frame.Border:GetFrameLevel()+10)
		:Hide()
	.__END

	hooksecurefunc(ZGV.Frame,"StartSizing", function() Tabs:StartSizing() end)
	hooksecurefunc(ZGV.Frame,"StopMovingOrSizing", function() Tabs:StopMovingOrSizing() end)

	local last = nil

	-- kill tabs over the limit
	while (#ZGV.db.char.tabguides>max_tabs_limit) do tremove(ZGV.db.char.tabguides,#ZGV.db.char.tabguides) end

	for tabnum,guidedata in pairs(ZGV.db.char.tabguides) do
		local tab = Tabs:GetTabFromPool()
		tab:AssignGuide(guidedata.title,guidedata.step)
		if guidedata.title==ZGV.db.char.guidename then -- this was the last guide used, make the tab active
			tab:SetAsCurrent()
		end
		last = tab
	end

	ZGV:AddMessageHandler("SKIN_UPDATED",Tabs.ApplySkin)
	Tabs:ApplySkin()

	Tabs.lastUpdated = debugprofilestop()
	Tabs:ReanchorTabs()
end

function Tabs:LoadGuideToTab(guide,step,special,shared)
	local tab = Tabs:TryToActivateGuide(guide)
	if tab then 
		tab:AssignGuide(guide,step,shared)
		return
	else
		if special then
			tab = Tabs:GetSpecialTabFromPool(special)
		else
			tab = Tabs:GetTabFromPool()
		end
		tab:SetAsCurrent()
		tab:AssignGuide(guide,step,shared)
		tab:ActivateGuide()
	end
end

-- get one of unused tabs, or create new one
function Tabs:GetTabFromPool()
	for i,tab in pairs(Tabs.Pool) do
		if not tab.guide then 
			return tab
		end
	end

	return Tabs:CreateTab() 
end

function Tabs:TryToActivateGuide(guide)
	if not guide then return false end

	for i,tab in pairs(Tabs.Pool) do
		if tab.guide==guide then
			tab:ActivateGuide() 
			return tab
		end
	end
	return false
end

-- get one of unused tabs for given header variable, or create new one
-- returns tab and if the tab already existed
function Tabs:GetSpecialTabFromPool(mode)
	for i,tab in pairs(Tabs.Pool) do
		if tab.guide and tab.guide.headerdata and tab.guide.headerdata[mode]  then 
			return tab, true
		end
	end

	return Tabs:GetTabFromPool(), false
end

-- update visual data based on current skin
function Tabs:ApplySkin()
	if not Tabs.lastUpdated then return end -- nope, not ready yet
	local show_icons = ZGV.db.profile.tabs_icon

	local decorwidth = SkinData("TabsDecorWidth")
	local icon_size = SkinData("TabsIconSize")
	local decor = SkinData("TabsDecor")
	
	for i,tab in pairs(Tabs.Pool) do
		if show_icons then
			tab.Icon:Show()
			tab.Icon:SetPoint("LEFT",4+decorwidth,0)
			tab.Text:SetPoint("LEFT",icon_size+6+decorwidth,0)
			tab.Text:SetPoint("RIGHT",-decorwidth,0)
		else
			tab.Icon:Hide()
			tab.Text:SetPoint("LEFT",5,0)
		end

		if SkinData("TabsDecor") then
			CHAIN(tab.DecorLeft)
				:SetTexture(decor)
				:Show()
				:SetVertexColor(unpack(SkinData("TabsBackdropInactive")))
				:SetShown(true)
			CHAIN(tab.DecorRight)
				:SetTexture(decor)
				:Show()
				:SetVertexColor(unpack(SkinData("TabsBackdropInactive")))
			CHAIN(tab.DecorMiddle)
				:SetTexture(decor)
				:Show()
				:SetVertexColor(unpack(SkinData("TabsBackdropInactive")))
			CHAIN(tab.Button)
				:SetBackdropColor(0,0,0,0)
				:SetBackdropBorderColor(unpack(SkinData("TabsBorderColor")))
		else
			tab.DecorLeft:Hide()
			tab.DecorRight:Hide()
			tab.DecorMiddle:Hide()
			tab.Separator:Show()
			CHAIN(tab.Button)
				:SetBackdropColor(unpack(SkinData("TabsBackdropInactive")))
				:SetBackdropBorderColor(unpack(SkinData("TabsBorderColor")))
		end
		
		tab.Text:SetTextColor(unpack(SkinData("TabsTextColor")))
		tab.Icon:SetTexture(SkinData("TabsIcons"))
		if tab.isActive then
			if SkinData("TabsDecor") then
				tab.DecorLeft:SetVertexColor(unpack(SkinData("TabsBackdropActive")))
				tab.DecorRight:SetVertexColor(unpack(SkinData("TabsBackdropActive")))
				tab.DecorMiddle:SetVertexColor(unpack(SkinData("TabsBackdropActive")))
			else
				tab.Button:SetBackdropColor(unpack(SkinData("TabsBackdropActive")))
			end
		end
	end

	ZGV.ButtonSets.TitleButtons.ADDGUIDE:AssignToButton(Tabs.AddButton)
	ZGV.ButtonSets.TitleButtons.RIGHTRIGHT:AssignToButton(Tabs.MoreButton)

	Tabs:ReanchorTabs()	
end

-- resize tabs, maybe hide tabs that are outside of visible area and show dropdown
function Tabs:ReanchorTabs(force)
	if not (force or Tabs.lastUpdated) then return end
	if not (force or ZGV.Frame and ZGV.Frame:IsVisible()) then return end
	local prev = nil
	local count = 0

	-- Count active tabs
	for i,tab in pairs(Tabs.Pool) do
		if tab.guide then 
			count = count + 1
		end
	end

	local FIRST_OFFSET = SkinData("TabsFirstOffset")

	-- Resize
	local add_button_width = Tabs.AddButton:GetWidth() - SkinData("TitleButtonInsetHighlight") -- to handle extra highlight padding
	local more_button_width = Tabs.MoreButton:GetWidth() - SkinData("TitleButtonInsetHighlight") -- to handle extra highlight padding
	local frame_width = ZGV.Frame:GetWidth()-2*SkinData("TabsMargin")-add_button_width-FIRST_OFFSET
	--local tab_width = ((frame_width-add_button_width) / 3) - 1
	local tab_width = min(frame_width/2,max(100,(frame_width-count) / count)) -- -count to handle 1px margins

	local visible_limit,visible_width = count,tab_width

	-- Reposition
	local visible_prev, hidden_prev = nil, nil
	local tabcounter = 0
	for i,tab in pairs(Tabs.Pool) do
		if tab.guide then 
			tabcounter = tabcounter + 1
			tab.Button:SetFrameLevel(ZGV.Frame.Border:GetFrameLevel()+1) -- border pushes itself above tabs, push back

			tab.Button:ClearAllPoints()
			-- Show guide remove button. We may hide it later, if only one tab is visible.
			tab.Close.DoShow=true
			tab.Change:SetPoint("TOPRIGHT",tab.Close,"TOPLEFT")

			tab.Button:SetWidth(tab_width)
			tab.Button:Show()

			if count == 1 then
				tab.Close.DoShow = false
			else
				tab.Close.DoShow = true
			end

			if ((tab_width*count) > frame_width) then
				visible_limit = floor((frame_width-more_button_width)/tab_width)
				visible_width = floor((frame_width-more_button_width) / visible_limit)
				Tabs.MoreButton:Show()
			else
				Tabs.MoreButton:Hide()
			end

			tab.Button:SetWidth(visible_width)
			tab.Button:SetFrameLevel(6)

			if tabcounter<=visible_limit then
				tab:HideInteraction()
				tab.Button:SetParent(ZGV.Frame)
				tab.Hidden = false

				if visible_prev then
					tab.Button:SetPoint("TOPLEFT",visible_prev,"TOPRIGHT",1,0)
				else
					tab.Button:SetPoint("BOTTOMLEFT",ZGV.Frame.Border.Guides,"TOPLEFT",FIRST_OFFSET,0)
				end
				visible_prev = tab.Button

				Tabs.AddButton:SetPoint("LEFT",visible_prev,"RIGHT",1,0)
			else
				tab.Button:SetParent(Tabs.RemainingMenu)
				tab.Hidden = true
				if hidden_prev then
					tab.Button:SetPoint("TOPLEFT",hidden_prev.Button,"BOTTOMLEFT")
				else
					tab.Button:SetPoint("TOPRIGHT",Tabs.RemainingMenu,"TOPRIGHT")
				end
				hidden_prev = tab
				--Tabs.AddButton:SetPoint("LEFT",Tabs.MoreButton,"RIGHT",1,0)
			end
		else
			tab.Button:Hide()
		end
	end
end

-- show/hide dropdown for additional tabs
function Tabs:ToggleRemainingMenu()
	if Tabs.RemainingMenu:IsVisible() then
		Tabs.RemainingMenu:Hide()
		return
	end

	Tabs.RemainingMenu:Show()
end

-- update guide for current tab, select tab if none was activated before
function Tabs:UpdateCurrentTab()
	if not ZGV.CurrentGuide then return end

	local tab

	-- tab already activated during this session
	if Tabs.ActiveTab then 
		tab = Tabs.ActiveTab 
	-- no tab activated, found one that has current guide
	else
		for _,tabobj in pairs(Tabs.Pool) do
			if tabobj.title==ZGV.CurrentGuide.title then
				tab=tabobj
				break
			end
		end
	end

	if not tab then 
	-- legacy support, guide loaded when tab support did not exist
		tab = Tabs:GetTabFromPool()
	end

	tab:SetAsCurrent()
	tab:AssignGuide(ZGV.CurrentGuide.title,ZGV.CurrentGuide.CurrentStepNum,ZGV.CurrentGuide.type=="SHARED")
end

function Tabs:DoesTabExist(title)
	for _,tabobj in pairs(Tabs.Pool) do
		if tabobj.title==title then
			return tabobj
		end
	end

	return false
end

function Tabs:DoesSpecialTabExist(mode)
	for i,tab in pairs(Tabs.Pool) do
		if tab.guide and tab.guide.headerdata and tab.guide.headerdata[mode]  then 
			return true
		end
	end

	return false
end

-- tab over/out are not as simple as they could be, since for nested buttons mouse out event sometimes does not trigger, so we need to keep track of over/out states by ourselves.
function Tabs:HideInteraction()
	if self.Button:IsMouseOver() then ZGV:ScheduleTimer(function() self:HideInteraction() end, 0.1) return end

	self.Close:Hide()
	self.Change:Hide()
	--self.Text:SetTextColor(unpack(SkinData("TabsTextColor")))
	if not self.Active then
		self.ButtonsContainer:SetBackdropColor(unpack(SkinData("TabsBackdropInactive")))
		self.ButtonsContainer:SetBackdropBorderColor(unpack(SkinData("TabsBackdropInactive")))
		self.ButtonsContainer:Hide()
	end

	GameTooltip:Hide()
end

function Tabs:ShowInteraction(text)
	if self.Close.DoShow then self.Close:Show() end
	self.Change:Show()
	--self.Text:SetTextColor(unpack(SkinData("TabsTextColorOver")))

	if self.isActive then
		self.ButtonsContainer:SetBackdropColor(unpack(SkinData("TabsContainerBackdropActive")))
		self.ButtonsContainer:SetBackdropBorderColor(unpack(SkinData("TabsContainerBackdropActive")))
	else
		self.ButtonsContainer:SetBackdropColor(unpack(SkinData("TabsContainerBackdropInactive")))
		self.ButtonsContainer:SetBackdropBorderColor(unpack(SkinData("TabsContainerBackdropInactive")))
	end
	self.ButtonsContainer:Show()
	
	text = text or self.title_short
	if text then
		GameTooltip:SetOwner(self.Button,"ANCHOR_BOTTOM")
		GameTooltip:ClearAllPoints()
		GameTooltip:ClearLines()
		GameTooltip:SetText(text)
		GameTooltip:SetWidth(300)
		GameTooltip:Show()
	end

	ZGV:ScheduleTimer(function() self:HideInteraction() end, 0.1)
end

function Tabs:CreateTab()
	local tab_height = SkinData("TabsHeight")
	local icon_size = SkinData("TabsIconSize")
	local decor = SkinData("TabsDecor")
	local decorwidth = SkinData("TabsDecorWidth")
	
	local tab = {}
	tab.Button = CHAIN(ui:Create("Button",ZGV.Frame,"ZGVTab"..#Tabs.Pool))
		:SetSize(100,tab_height)
		:SetFont(FONT,12)
		:SetText("Guide Title")
		:SetTexture("") -- initialize texture, will tweak it later
		:SetScript("OnClick",function() tab:ActivateGuide() end)
		:SetScript("OnEnter",function() tab:ShowInteraction() end)
		:SetScript("OnLeave",function() tab:HideInteraction() end)
		:SetBackdropColor(unpack(SkinData("TabsBackdropInactive")))
		:SetBackdropBorderColor(unpack(SkinData("TabsBorderColor")))
		:SetNormalBackdropColor(unpack(SkinData("TabsBackdropInactive")))
		:SetHighlightBackdropColor(unpack(SkinData("TabsBackdropActive")))
		:Hide()
	.__END

	tab.Button.ZygorTab=true

	tab.DecorLeft = CHAIN(tab.Button:CreateTexture())
		:SetPoint("TOPLEFT")
		:SetTexture(decor)
		:SetSize(tab_height,tab_height)
		:SetVertexColor(unpack(SkinData("TabsBackdropInactive")))
		:SetDrawLayer("BACKGROUND",6)
	.__END
	tab.DecorLeft:SetTexCoord(0,1/4,0,1)

	tab.DecorRight = CHAIN(tab.Button:CreateTexture())
		:SetPoint("TOPRIGHT")
		:SetTexture(decor)
		:SetSize(tab_height,tab_height)
		:SetVertexColor(unpack(SkinData("TabsBackdropInactive")))
		:SetDrawLayer("BACKGROUND",6)
	.__END
	tab.DecorRight:SetTexCoord(2/4,3/4,0,1)

	tab.DecorMiddle = CHAIN(tab.Button:CreateTexture())
		:SetPoint("TOPLEFT",tab.DecorLeft,"TOPRIGHT")
		:SetPoint("BOTTOMRIGHT",tab.DecorRight,"BOTTOMLEFT")
		:SetTexture(decor)
		:SetVertexColor(unpack(SkinData("TabsBackdropInactive")))
		:SetDrawLayer("BACKGROUND",6)
	.__END
	tab.DecorMiddle:SetTexCoord(1/4,2/4,0,1)

	tab.Separator = CHAIN(tab.Button:CreateTexture())
		:SetPoint("TOPLEFT",tab.Button,"TOPRIGHT")
		:SetTexture(SkinData("TabsSeparatorTexture"))
		:SetSize(1,tab_height)
		:SetVertexColor(unpack(SkinData("TabsSeparatorColor")))
	.__END


	-- move text to left with space for icon
	tab.Text = CHAIN(tab.Button:GetFontString())
		:ClearAllPoints()
		:SetPoint("LEFT",icon_size+6+decorwidth,0)
		:SetPoint("RIGHT",-decorwidth,0)
		:SetJustifyH("LEFT")
		:SetWordWrap(false)
		:SetTextColor(unpack(SkinData("TabsTextColor")))
	.__END

	-- place texture to be used for guide icon on the very left
	tab.Icon = CHAIN(tab.Button.tex)
		:ClearAllPoints()
		:SetPoint("LEFT",4+decorwidth,0)
		:SetSize(icon_size,icon_size)
		:SetTexture(SkinData("TabsIcons"))
		:SetDrawLayer("ARTWORK",7)
	.__END

	-- place texture to be used for guide icon on the very left
	tab.IconBusy = CHAIN(tab.Button:CreateTexture())
		:ClearAllPoints()
		:SetPoint("TOPLEFT",tab.Icon,"TOPLEFT")
		:SetSize(icon_size,icon_size)
		:SetTexture(SkinData("TabsBusyIcon"))
		:Hide()
	.__END

	tab.AnimBusy = CHAIN(tab.IconBusy:CreateAnimationGroup())
		:SetLooping("REPEAT")
		:SetScript("OnPlay", function() 
			tab.Icon:Hide()
			tab.IconBusy:Show() 
		end)
		:SetScript("OnStop", function() 
			tab.IconBusy:Hide() 
			tab.Icon:Show() 
		end)
	.__END
		tab.AnimBusyRotate = CHAIN(tab.AnimBusy:CreateAnimation("Rotation")) 
			:SetDegrees(-360) 
			:SetDuration(2)
		.__END

	tab.ButtonsContainer = CHAIN(ui:Create("Frame",tab.Button))
		:SetSize(icon_size*2+2,tab_height-1)
		:SetPoint("RIGHT",-decorwidth,-1)
	.__END

	tab.Close = CHAIN(CreateFrame("Button", nil, tab.ButtonsContainer, nil))
		:SetSize(icon_size,icon_size)
		:SetPoint("RIGHT",tab.ButtonsContainer,"RIGHT")
		:SetScript("OnClick",function(self) tab:RemoveTab() end)
		:SetScript("OnEnter",function(self)
			tab:ShowInteraction("Close current tab")
		end)
		:SetScript("OnLeave",function(self)
			tab:HideInteraction()
		end)
		:Hide()
	.__END
	ZGV.ButtonSets.TitleButtons.SMALLX:AssignToButton(tab.Close)

	tab.Change = CHAIN(CreateFrame("Button", nil, tab.ButtonsContainer, nil))
		:SetSize(icon_size,icon_size)
		:SetPoint("RIGHT",tab.Close,"LEFT")
		:SetScript("OnClick",function(self) 
			ZGV.GuideMenu:Show() 
			ZGV.GuideMenu.UseTab = tab
		end)
		:SetScript("OnEnter",function() 
			tab:ShowInteraction("Change current guide")
		end)
		:SetScript("OnLeave",function(self)
			tab:HideInteraction()
		end)
		:Hide()
	.__END
	ZGV.ButtonSets.TitleButtons.CHANGEGUIDE:AssignToButton(tab.Change)

	tab.Num = #Tabs.Pool+1

	if not ZGV.db.profile.tabs_icon then
		tab.Icon:Hide()
		tab.Text:SetPoint("LEFT",5,0)
	end


	table.insert(Tabs.Pool,tab)
	setmetatable(tab,{ __index=Tabs })

	return tab
end

function Tabs:SetBusy(state)
	if state and not self.Busy then
		self.Busy = true
		self.AnimBusy:Play()
	elseif not state then
		self.Busy = false
		self.AnimBusy:Stop()
	end
end


function Tabs:SetAsCurrent()
	if Tabs.ActiveTab then 
		Tabs.ActiveTab.isActive = false 
		if SkinData("TabsDecor") then
			Tabs.ActiveTab.DecorLeft:SetVertexColor(unpack(SkinData("TabsBackdropInactive")))
			Tabs.ActiveTab.DecorRight:SetVertexColor(unpack(SkinData("TabsBackdropInactive")))
			Tabs.ActiveTab.DecorMiddle:SetVertexColor(unpack(SkinData("TabsBackdropInactive")))
		else
			Tabs.ActiveTab.Button:SetBackdropColor(unpack(SkinData("TabsBackdropInactive")))
		end
	end
	
	Tabs.ActiveTab = self
	self.isActive = true
	if SkinData("TabsDecor") then
		self.DecorLeft:SetVertexColor(unpack(SkinData("TabsBackdropActive")))
		self.DecorRight:SetVertexColor(unpack(SkinData("TabsBackdropActive")))
		self.DecorMiddle:SetVertexColor(unpack(SkinData("TabsBackdropActive")))
	else
		self.Button:SetBackdropColor(unpack(SkinData("TabsBackdropActive")))
	end
end

function Tabs:ActivateGuide()
	self:SetAsCurrent()
	ZGV.ProgressBar:SetAnim("noinit") -- don't animate progress bar on switching tabs

	ZGV:SetGuide(self.guide,self.step,false,"silent")

	-- tab was in dropdown menu, move to first slot, hide menu
	if self.Hidden then 
		-- Shift tab to start of array
		local temp = table.remove(Tabs.Pool,self.Num)
		table.insert(Tabs.Pool,1,temp)

		-- Refresh tab numbers
		for i,tab in pairs(Tabs.Pool) do tab.Num=i end

		self.Hidden = false

		Tabs.RemainingMenu:Hide()

		Tabs:ReanchorTabs()
	end
end

local MAX_GUIDES_HISTORY = 30
function Tabs:AssignGuide(guidetitle,step,shared)
	local guide
	if shared then
		guide = ZGV.Sync.SharedGuide
	else
		if type(guidetitle)=="string" then 
			guide = ZGV:GetGuideByTitle(guidetitle)
		else
			guide = guidetitle
			guidetitle = guide.title
		end
	end

	if not guide then
		for tabnum,guidedata in pairs(ZGV.db.char.tabguides) do
			if guidedata.title==guidetitle then
				ZGV.db.char.tabguides[tabnum]=nil
				return
			end
		end
	end

	self.guide = guide
	self.title = guide.title
	self.title_short = guide.title_short
	self.step = step
	self.Button:SetText(guide.title_short)
	
	local x,y = unpack(ZGV.IconSets.TabsIcons[self.guide.type])
	local coords = ZGV.IconSets.TabsIcons[self.guide.type].texcoord
	self.icon_x = x
	self.icon_y = y
	self.Icon:SetTexCoord(unpack(coords))


	if not shared then
		ZGV.db.char.tabguides[self.Num] = {title=guidetitle, step=step}
	end

	Tabs:ReanchorTabs()

	local headerdata = guide.headerdata
	if headerdata and headerdata.shared then return end -- don't store shared guides in history

	local history = ZGV.db.char.guides_history
	if headerdata and headerdata.worldquestzone then -- find any world quest guide, remove it
		for gi,gd in ipairs(history) do
			if gd[3]=="worldquest" then tremove(history,gi) break end
		end
	else -- normal guide
		for gi,gd in ipairs(history) do
			if gd[1]==guidetitle then tremove(history,gi) break end
		end
	end

	while #history>=MAX_GUIDES_HISTORY do tremove(history) end
	tinsert(history,1,{guidetitle,step,guide.headerdata.worldquestzone and "worldquest"})
end

function Tabs:RemoveTab()
	-- close current tab
	self.Button:Hide()
	self.guide = nil
	self.step = nil
	self.title = nil
	self.title_short = nil

	if self.guide and self.guide.headerdata and self.guide.headerdata.shared then -- if shared tab is removed, stop share slaving
		ZGV:ScheduleTimer(function() ZGV.Sync:Deactivate() end,0)
	end

	if self.isActive then
	-- this was the active guide. find something else to show
		local found
		for i=self.Num+1,#Tabs.Pool do -- try to activate next tab
			if Tabs.Pool[i].guide then
				Tabs.Pool[i]:ActivateGuide()
				break
			end
		end
		if not found then -- nothing? try to activate previous tab
			for i=1,self.Num do
				if Tabs.Pool[i].guide then
					Tabs.Pool[i]:ActivateGuide()
					break
				end
			end
		end
	end

	-- Remmove guide from saved tab list
	table.remove(ZGV.db.char.tabguides,self.Num)

	-- Shift tab to end of array
	local temp = table.remove(Tabs.Pool,self.Num)
	table.insert(Tabs.Pool,temp)

	-- Refresh tab numbers
	for i,tab in pairs(Tabs.Pool) do tab.Num=i end

	self.isActive = false
	Tabs:ReanchorTabs()
end

function ZGV.Tabs:OptionalTab(params)
	local step,guide = ZGV.CurrentStep:GetJumpDestination(params)
	if not guide then 
		-- we are jumping within same guide, don't ask about anything
		ZGV:FocusStep(step)
		return
	end

	-- not same as current guide.
	-- get guide object
	local guide = ZGV:GetGuideByTitle(params)
	if not guide then print("Failed to locate guide:",params) end

	-- check if have new guide already tabbed somewhere, then ask about either opening new tab or switching to existing one
	local tab = Tabs:DoesTabExist(guide.title)

	ZGV:Debug("&_SUB &tabs optiona tab popup for %s",guide.title)
	ZGV.NotificationCenter:AddEntry(
	"tabguide",
	guide.title_short,
	tab and L["tabs_guide_switch"] or L["tabs_guide_new"],
	ZGV.IconSets.TabsIcons.file,
	ZGV.IconSets.TabsIcons['LEVELING'].texcoord,
	function() 
		if not tab then tab = Tabs:GetTabFromPool() end

		tab:SetAsCurrent()
		ZGV:SetGuide(guide.title,step) end,
	nil,
	1,
	10, --poptime
	30, --removetime
	false, --quiet
	nil,--onopen
	"tabguide")
end

tinsert(ZGV.startups,{"Guide tabs",function(self)
	ZGV.db.char.tabguides = ZGV.db.char.tabguides or {}
	Tabs:Initialize()
end})