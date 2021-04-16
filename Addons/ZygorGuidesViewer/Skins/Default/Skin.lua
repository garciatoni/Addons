local name,ZGV = ...

-- GLOBAL ZygorGuidesViewerFrameMaster,ZygorGuidesViewerMapIcon
local Skin = ZGV.Skins:AddSkin("default","Default")

local CHAIN=ZGV.ChainCall
local SkinData = ZGV.UI.SkinData


local FrameProto = {}

-- Skin-specific functions now
function Skin:CreateFrame()
	if not self.frame then
		self.frame = CreateFrame("FRAME","ZygorGuidesViewerFrame",ZygorGuidesViewerFrameMaster,"ZGV_DefaultSkin_Frame_Template")
		self.frame.skin = self
		self.frame.style = self.id

		Mixin(self.frame,FrameProto)
	end

	ZGV.Frame = self.frame

	self.frame:ApplySkin()

	self.frame:EnableKeyboard(true)

	return self.frame
end

local FONT = ZGV.Font

function FrameProto:ApplySkin()
	local frame = self

	ZGV.STEP_SPACING = SkinData("StepSpacing")

	local function set_alpha(new_a,r,g,b,a) return r,g,b,new_a*a end
	local OPACITY = SkinData("UseOpacity") and ZGV.db.profile.opacity or  1

	-- Setting up border
	frame.Border:SetBackdrop(SkinData("WindowBackdrop") or SkinData("Backdrop"))
	frame.Border:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("WindowBackdropColor") or SkinData("BackdropColor"))))
	frame.Border:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("WindowBackdropBorderColor") or SkinData("BackdropBorderColor"))))
	CHAIN(frame.Border.Back)
		:SetBackdrop(SkinData("WindowBottomBackdrop"))
		:SetBackdropColor(unpack(SkinData("WindowBottomBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("WindowBottomBBackdropBorderColor")))
		:SetFrameLevel(4)

	frame.Border.Guides:SetBackdrop(SkinData("Backdrop"))
	frame.Border.Guides:SetBackdropColor(unpack(SkinData("SystemBarBackdropColor")))
	frame.Border.Guides:SetBackdropBorderColor(unpack(SkinData("SystemBarBackdropBorderColor")))

	frame.StepContainer:SetFrameLevel(4)
	frame.Border.Guides:SetFrameLevel(5)

	-- Search Button
	--frame.Controls.SearchButton:ClearAllPoints()
	--frame.Controls.SearchButton:SetPoint("TOPLEFT", frame.Border.TitleBar,"TOPLEFT",unpack(SkinData("FindNearestPosition"))) -- TODO starlight

	frame.Controls.ReportButton:GetNormalTexture():SetVertexColor(1,0,0)
	
	local size = SkinData("TitleButtonSize")
	frame.Controls.PrevButton:SetSize(SkinData("TitleButtonStepPrevNextSize") or size,SkinData("TitleButtonStepPrevNextSize") or size)
	frame.Controls.NextButton:SetSize(SkinData("TitleButtonStepPrevNextSize") or size,SkinData("TitleButtonStepPrevNextSize") or size)
	frame.Controls.StepNum.Step:SetFont(FONT,SkinData("StepNumFontSize"))
	frame.Controls.StepNum:SetWidth(SkinData("StepNumWidth"))

	frame.Controls.NextButtonSpecial:SetSize(SkinData("TitleButtonStepPrevNextSize") or size,SkinData("TitleButtonStepPrevNextSize") or size)
	frame.Controls.NextButtonSpecial:GetNormalTexture():SetVertexColor(1,1,1,1)
	frame.Controls.NextButtonSpecial:Hide()

	for _,control in ipairs(frame.everything) do
		if control.ApplySkin then control:ApplySkin() end
		if control.SkinTexture then control:SetTexture(SkinData(control.SkinTexture)) end
		if control.SetNonBlocking then control:SetNonBlocking(false) end
	end
	ZGV.Sync:UpdateButtonColor()


	if not frame.Border.TabBack then
		frame.Border.TabBack = ZGV.CreateFrameWithBG("FRAME","ZygorGuidesViewerFrame_Border_TabBack",frame.Border)
	end
	CHAIN(frame.Border.TabBack)
		:SetBackdrop(SkinData("TabBackdrop"))
	local center = frame.Border.TabBack.Center or frame.Border.TabBack:GetRegions()
	if center then 
		center:SetColorTexture(unpack(SkinData("TabBackdropColor")))
	end

	frame.Scroll.Bar.ScrollUpButton:SetSize(unpack(SkinData("ScrollBarButtonSize") or {16,16})) -- they're 18x16 by default now, the silly things.
	frame.Scroll.Bar.ScrollDownButton:SetSize(unpack(SkinData("ScrollBarButtonSize") or {16,16}))
	frame.Scroll.Bar.ThumbTexture:SetTexture(ZGV.StyleDir.."scrollbutton")

	ZGV.ProgressBar:SetDecor(SkinData("ProgressBarDecorUse"))
	ZGV.ProgressBar:SetTexture(SkinData("ProgressBarTextureFile"))
	ZGV.ProgressBar.Texture:SetVertexColor(unpack(SkinData("ProgressBarTextureColor")))

	if ZGV.db.profile.progress then
		ZGV.ProgressBar:Show()
	else
		ZGV.ProgressBar:Hide()
	end

	frame.Controls.Logo:SetSize(unpack(SkinData("TitleLogoSize")))
	frame.Controls.Logo:SetPoint("CENTER",frame.Border.TitleBar,"CENTER",0,-2)

	for tk,tex in ipairs({frame.MenuAdditional:GetRegions()}) do if tex.SetNonBlocking then tex:SetNonBlocking(false) end end

	
	-- menu elements' fonts and checks: now set in ZGV_DefaultSkin_MenuButton_Mixin:ApplySkin()

	frame:ApplySkinToSteps()

	frame:UpdateLocking()
	frame:AlignFrame()

	ZGV:UpdateFrame()

	-- other components now listed for SKIN_UPDATED

	ZGV.Frame:OnSizeChanged()
end

function FrameProto:ApplySkinToSteps()
	for pn,pool in pairs(self.stepFramePools) do
		for step,_ in pairs(pool.activeObjects) do step:ApplySkin() end
		for _,step in ipairs(pool.inactiveObjects) do step:ApplySkin() end
	end

	for texture,_ in pairs(self.stickySepPool.activeObjects) do 
		texture:SetVertexColor(1,0,1,1)
	end	
end

function FrameProto:UpdateLocking()
	-- remove mouse activity in lock mode
	local locked = ZGV.db.profile["windowlocked"]
	--self:Debug("lock mode: "..tostring(locked))
	
	local frame = ZGV.Frame
	
	frame.Border:EnableMouse(not locked)
	frame.Border.TitleBar:EnableMouse(not locked)
	frame.Border.Guides:EnableMouse(not locked)
	frame.ResizerLeft:EnableMouse(not locked)
	frame.ResizerRight:EnableMouse(not locked)
	frame.ResizerBottomLeft:EnableMouse(not locked)
	frame.ResizerBottomRight:EnableMouse(not locked)
	frame.ResizerBottom:EnableMouse(not locked)

	frame.Scroll:EnableMouseWheel(not locked)

	--[[
	local BUTTONTEXTURE = SkinData("TitleButtons")
	-- lock button
	local lockbut = frame.Border.TitleBar.LockButton
	ZGV.F.AssignButtonTexture(lockbut,BUTTONTEXTURE,ZGV.db.profile["windowlocked"] and 4 or 3,32)
	if ZGV.db.profile.debug_newicons then
		frame.Border.TitleBar.LockButton:GetNormalTexture():SetTexture(ZGV.SKINSDIR.."thinicon-test-lock-double",nil,nil,"BILINEAR")
		frame.Border.TitleBar.LockButton:GetNormalTexture():SetTexCoord(0,0.25,0,0.5)
	end
	--]]
end

function FrameProto:AlignFrame()  -- mixed into Frame, never called on Skin!!
	local frame=self
	local framemaster = frame:GetParent()
	local scale = ZGV.db.profile.framescale
	local width = frame:GetWidth()
	local height = frame:GetHeight()

	local upsideup = not ZGV.db.profile.resizeup

	local UP_TOPLEFT = upsideup and "TOPLEFT" or "BOTTOMLEFT"
	local UP_BOTTOMLEFT = upsideup and "BOTTOMLEFT" or "TOPLEFT"
	local UP_BOTTOM = upsideup and "BOTTOM" or "TOP"
	local UP_TOPRIGHT = upsideup and "TOPRIGHT" or "BOTTOMRIGHT"
	local UP_BOTTOMRIGHT = upsideup and "BOTTOMRIGHT" or "TOPRIGHT"
	local UP = upsideup and 1 or -1

	CHAIN(frame.Border.TitleBar)
		:ClearAllPoints()
		:SetPoint(UP_TOPLEFT,frame.Border,UP_TOPLEFT,0,0)
		:SetPoint(UP_TOPRIGHT,frame.Border,UP_TOPRIGHT,0,0)

	local tabadj =  SkinData("TabsHeight")

	frame.Border.Guides:ClearAllPoints()
	frame.Controls.Scroll:ClearAllPoints()

	CHAIN(frame.Border.Back)
		:SetBackdrop(SkinData("WindowBottomBackdrop"))
		:SetBackdropColor(unpack(SkinData("WindowBottomBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("WindowBottomBBackdropBorderColor")))

	if upsideup then
		CHAIN(frame.Controls.Scroll)
			:SetPoint("TOPLEFT",ZGV.Frame.Border,"TOPLEFT",SkinData("ViewerMargin"),-57-tabadj-SkinData("TabsTopOffset")) -- TODO starlight
			:SetPoint("BOTTOMRIGHT",ZGV.Frame.Border,"BOTTOMRIGHT",-SkinData("ViewerMargin"),8-tabadj-SkinData("TabsTopOffset")) -- TODO starlight
		CHAIN(frame.Border.Guides)
			:SetPoint("BOTTOMLEFT",frame.Controls.Scroll.Child,"TOPLEFT",0,0)
			:SetPoint("BOTTOMRIGHT",frame.Controls.Scroll.Child,"TOPRIGHT",0,0)
		CHAIN(ZGV.ProgressBar)
			:SetPoint("TOPLEFT", frame.Controls.Scroll,"BOTTOMLEFT",SkinData("ProgressBarOffsetX"),23)
			:SetPoint("TOPRIGHT", frame.Controls.Scroll.Child , "BOTTOMRIGHT",-SkinData("ProgressBarOffsetX"),23)
		framemaster:SetClampRectInsets(0,(width-40)*scale,(-43)*scale,(-height+55)*scale)

		CHAIN(frame.Border.Back)
			:SetPoint("TOP",0,-49)
			:SetPoint("BOTTOM",0,0)
		frame.Border.Back.TopLeftCorner:SetColorTexture(1,1,1,1)
		frame.Border.Back.TopRightCorner:SetColorTexture(1,1,1,1)
	else
		CHAIN(frame.Controls.Scroll)
			:SetPoint("TOPLEFT",ZGV.Frame.Border,"TOPLEFT",SkinData("ViewerMargin"),-14) -- -10-SkinData("TabsTopOffset"))
			:SetPoint("BOTTOMRIGHT",ZGV.Frame.Border.Guides,"TOPRIGHT",0,0) -- 8-SkinData("TabsTopOffset"))
		CHAIN(frame.Border.Guides)
			:SetPoint("BOTTOMLEFT",ZGV.Frame.Border.TitleBar,"TOPLEFT",0,-2)
			:SetPoint("BOTTOMRIGHT",ZGV.Frame.Border.TitleBar,"TOPRIGHT",0,-2)
		CHAIN(ZGV.ProgressBar)
			:SetPoint("TOPLEFT", frame.Controls.Scroll,"BOTTOMLEFT",SkinData("ProgressBarOffsetX"),35)
			:SetPoint("TOPRIGHT", frame.Controls.Scroll.Child , "BOTTOMRIGHT",-SkinData("ProgressBarOffsetX"),35)
		framemaster:SetClampRectInsets(0,(width-40)*scale,-height*scale,(42)*scale)

		CHAIN(frame.Border.Back)
			:SetPoint("BOTTOM",0,26)
			:SetPoint("TOP",0,0)
		frame.Border.Back.BottomLeftCorner:SetColorTexture(1,1,1,1)
		frame.Border.Back.BottomRightCorner:SetColorTexture(1,1,1,1)
	end

	
	frame.Border.Guides:Show()
	frame.Border:Show()

	frame.Border.TabBack:ClearAllPoints()
	frame.Border.TabBack:SetPoint(UP_TOPLEFT,frame.Border,UP_TOPLEFT,2,-27*UP)
	frame.Border.TabBack:SetPoint(UP_BOTTOMRIGHT,frame.Border,UP_TOPRIGHT,-2,(-29)*UP)


	-- first line according to up/down orientation, the rest follows

	-- resizers
	CHAIN(frame.ResizerBottom) :ClearAllPoints() :SetPoint(UP_BOTTOMLEFT,10,0) :SetPoint(UP_TOPRIGHT,frame,UP_BOTTOMRIGHT,-10,10*UP)
	CHAIN(frame.ResizerBottomLeft) :ClearAllPoints() :SetPoint(UP_BOTTOMLEFT,0,0)
	CHAIN(frame.ResizerBottomRight) :ClearAllPoints() :SetPoint(UP_BOTTOMRIGHT,0,0)

	ZGV:ResizeFrame()
end