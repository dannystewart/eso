if not PP then PP = {} end
-- media
PP.backgrounds = {}

PP.t = {			--[[	Textures	]]
	bg1		=	"PerfectPixel/textures/line.dds",
	bg2		=	"PerfectPixel/textures/dots.dds",
	bg3		=	"PerfectPixel/textures/gray50.dds",
	gU		=	"PerfectPixel/textures/GradientUp.dds",
	gD		=	"PerfectPixel/textures/GradientDown.dds",
	gL		=	"PerfectPixel/textures/GradientLeft.dds",
	gR		=	"PerfectPixel/textures/GradientRight.dds",
	clear	=	"PerfectPixel/textures/clear.dds",
	div		=	"PerfectPixel/textures/divider.dds",
	divU	=	"PerfectPixel/textures/dividerUp.dds",
	divD	=	"PerfectPixel/textures/dividerDown.dds",
	def1	=	"esoui/art/tooltips/munge_overlay.dds",
	def2	=	"EsoUI/Art/Miscellaneous/centerscreen_left.dds",

	white	=	"PerfectPixel/textures/white.dds",
	w8x8	=	"PerfectPixel/textures/w8x8.dds",
	edge_8x8_outer_shadow	=	"PerfectPixel/textures/edge_8x8_outer_shadow.dds",
}
PP.f = {			--[[	Fonts		]]
	univers57	=	"EsoUI/Common/Fonts/Univers57.otf|15",
	univers67	=	"EsoUI/Common/Fonts/Univers67.otf|15",
	u57			=	"EsoUI/Common/Fonts/Univers57.otf",
	u67			=	"EsoUI/Common/Fonts/Univers67.otf",
}
--[[colors
def2 = ( 197, 194, 158 )
def = ( 173, 166, 132 )
red = ( 222, 36, 33 )
over = ( 232, 232, 184 )
96/255, 125/255, 139/255
]]
-- functions

function PP:CreateBackground(parent, --[[#1]] point1, relTo1, relPoint1, x1, y1, --[[#2]] point2, relTo2, relPoint2, x2, y2, minLayer)
	local bg
	if not parent.PP_BG then
		bg = CreateControl("$(parent)_PP_BG", parent, CT_BACKDROP)
	else
		bg = parent.PP_BG
	end

	parent.PP_BG = bg

	bg:SetAnchor(point1 or TOPLEFT,		relTo1 or parent,	relPoint1 or TOPLEFT,		x1 or 0, y1 or 0)
	bg:SetAnchor(point2 or BOTTOMRIGHT,	relTo2 or parent,	relPoint2 or BOTTOMRIGHT,	x2 or 0, y2 or 0)

	bg:SetDrawLayer(0)
	bg:SetDrawLevel(0)
	bg:SetDrawTier(0)

	bg:SetCenterTexture(PP.SV.skin_backdrop, PP.SV.skin_backdrop_tile_size, PP.SV.skin_backdrop_tile and 1 or 0)
	bg:SetCenterColor(unpack(PP.SV.skin_backdrop_col))
	bg:SetInsets(PP.SV.skin_backdrop_insets, PP.SV.skin_backdrop_insets, -PP.SV.skin_backdrop_insets, -PP.SV.skin_backdrop_insets)
	bg:SetEdgeTexture(PP.SV.skin_edge, PP.SV.skin_edge_file_width, PP.SV.skin_edge_file_height, PP.SV.skin_edge_thickness, 0)
	bg:SetEdgeColor(unpack(PP.SV.skin_edge_col))
	bg:SetIntegralWrapping(PP.SV.skin_edge_integral_wrapping)

	if minLayer then
		parent:SetDrawLayer(1)
		parent:SetDrawLevel(1)
		parent:SetDrawTier(1)

		parent:SetDrawLayer(0)
		parent:SetDrawLevel(0)
		parent:SetDrawTier(0)
	end

	table.insert(self.backgrounds, bg)
end

function PP:HideBackgroundForScene(scene, pp_bg)
	scene:RegisterCallback("StateChange", function(_, newState)
		if newState == SCENE_FRAGMENT_SHOWING then
			pp_bg:SetHidden(true)
		elseif newState == SCENE_FRAGMENT_HIDDEN then
			pp_bg:SetHidden(false)
		end
	end)
end

function PP:ForceRemoveFragment(scene, targetFragment)
	local existingFn = scene.AddFragment
	function scene:AddFragment(fragment, ...)
		if fragment == targetFragment then
			return
		else
			existingFn(self, fragment, ...)
		end
	end
	scene:RemoveFragment(fragment)
end

function PP:SetLockedFn(objectTable, existingFnName)
	local existingFn	= objectTable[existingFnName]
	local marker		= 'locked_' .. existingFnName

	objectTable[marker]	= true

	local newFn = function(...)
		if not objectTable[marker] then
			objectTable[marker] = true
			return existingFn(...)
		end
	end
	objectTable[existingFnName] = newFn
end

function PP:CallLockedFn(objectTable, existingFnName, ...)
	local marker = 'locked_' .. existingFnName
	if objectTable[marker] then
		objectTable[marker] = false
		return objectTable[existingFnName](objectTable, ...)
	end
end

function PP:PostHooksSetupCallback(list, mode, dataTypeId, onCreateFn, onUpdateFn)
	local dataType				= ZO_ScrollList_GetDataTypeTable(list, dataTypeId)
	local existingSetupCallback	= dataType.setupCallback
	local postHooks				= dataType.postHooksSetupCallback

	if not postHooks then
		dataType.postHooksSetupCallback = {}
	end

	dataType.postHooksSetupCallback[mode] = { OnCreate = onCreateFn, OnUpdate = onUpdateFn, }

	if not postHooks then
		postHooks = dataType.postHooksSetupCallback

		dataType.setupCallback = function(control, data, ...)
			existingSetupCallback(control, data, ...)

			local hook = postHooks[list.mode]
			if control.isUpdate then
				hook.OnUpdate(control, data, ...)
			else
				hook.OnCreate(control, data, ...)
				control.isUpdate = true
			end
		end
	end
end

---------------------------------------------------------------------------------------------------
-- SCENE_FRAGMENT_SHOWN		= "shown"
-- SCENE_FRAGMENT_HIDDEN	= "hidden"
-- SCENE_FRAGMENT_SHOWING	= "showing"
-- SCENE_FRAGMENT_HIDING	= "hiding"
-- SCENE_SHOWN				= "shown"
-- SCENE_HIDDEN				= "hidden"
-- SCENE_SHOWING			= "showing"

--(3)--TOPLEFT		(1)---TOP		(9)---TOPRIGHT
--(2)--LEFT			(128)-CENTER	(8)---RIGHT
--(6)--BOTTOMLEFT	(4)---BOTTOM	(12)--BOTTOMRIGHT
-- isValid, point, relTo, relPoint, offsX, offsY, constraints = control:GetAnchor(anchorIndex)
PP.Anchor = function(control, --[[#1]] set1_p, set1_rTo, set1_rp, set1_x, set1_y, --[[#2]] toggle, set2_p, set2_rTo, set2_rp, set2_x, set2_y)
	local --[[#1]] get1_isA, get1_p, get1_rTo, get1_rp, get1_x, get1_y = control:GetAnchor(0)
	local --[[#2]] get2_isA, get2_p, get2_rTo, get2_rp, get2_x, get2_y = control:GetAnchor(1)
	control:ClearAnchors()
	control:SetAnchor(set1_p or get1_p, set1_rTo or get1_rTo, set1_rp or get1_rp, set1_x or get1_x, set1_y or get1_y)
	if toggle then
		control:SetAnchor(set2_p or get2_p, set2_rTo or get2_rTo, set2_rp or get2_rp, set2_x or get2_x, set2_y or get2_y)
	end
end

--outline, thick-outline, soft-shadow-thin, soft-shadow-thick, shadow 
PP.Font = function(control, --[[Font]] font, size, outline, --[[Alpha]] a, --[[Color]] c_r, c_g, c_b, c_a, --[[StyleColor]] sc_r, sc_g, sc_b, sc_a)
	if font then
		control:SetFont(string.format("%s|%s|%s", font, size, outline))
	end
	if a then
		control:SetAlpha(a)
	end
	if c_r and c_g and c_b and c_a then
		control:SetColor(c_r/255, c_g/255, c_b/255, c_a)
	end
	if sc_r and sc_g and sc_b and sc_a then
		control:SetStyleColor(sc_r/255, sc_g/255, sc_b/255, sc_a)
	end
end

PP.ListBackdrop = function(control, x_1, y_1, x_2, y_2, --[[tex]] tex, size, mod, --[[bd]] c_r, c_g, c_b, c_a, --[[edge]] edge_r, edge_g, edge_b, edge_a, --[[e_tex]] e_tex, e_t)
	if not control:GetNamedChild("Backdrop") then
		local targetBackdrop = CreateControl(control:GetName() .. "Backdrop", control, CT_BACKDROP)
		targetBackdrop:SetDrawLayer(0)
		targetBackdrop:SetDrawLevel(0)
		targetBackdrop:SetDrawTier(0)
		targetBackdrop:SetAnchor(TOPLEFT,		control, TOPLEFT,		x_1, y_1)
		targetBackdrop:SetAnchor(BOTTOMRIGHT,	control, BOTTOMRIGHT,	x_2, y_2)
		targetBackdrop:SetCenterTexture(tex, size, mod)
		targetBackdrop:SetCenterColor(c_r/255, c_g/255, c_b/255, c_a)
		targetBackdrop:SetEdgeTexture(e_tex or nil, 128, 16, e_t or 1, 0)
		targetBackdrop:SetEdgeColor(edge_r/255, edge_g/255, edge_b/255, edge_a)
		-- targetBackdrop:SetInsets(1, 1, -1, -1)
	end
end

----------------------------------
PP.CreateBackdrop = function(control)
	if control.backdrop then return control.backdrop end

	control.backdrop = CreateControl("$(parent)Backdrop", control, CT_BACKDROP)

	local backdrop = control.backdrop

	backdrop:SetAnchorFill(control)
	backdrop:SetDrawLayer(0)
	backdrop:SetDrawLevel(0)
	backdrop:SetDrawTier(0)
	
	return control.backdrop
end

PP.ScrollBar = function(control, --[[sb_c]] sb_r, sb_g, sb_b, sb_a, --[[bg_c]] bg_r, bg_g, bg_b, bg_a)
	local tex = PP.t.w8x8

	if not control.scrollbar then
		control = control:GetParent()
	end

	local sb, up, down	= control.scrollbar, control.upButton or control.scrollUpButton, control.downButton or control.scrollDownButton
	local thumb			= sb:GetThumbTextureControl()
	local contents		= control.contents
	local parent		= control:GetParent():GetParent()
	if parent == GuiRoot then
		parent = control:GetParent()
	end

	up:SetHidden(true)
	down:SetHidden(true)

	sb:SetBackgroundMiddleTexture(tex)
	sb:SetBackgroundTopTexture(nil)
	sb:SetBackgroundBottomTexture(nil)
	-- sb:SetColor(0, 0, 0, .6)
	sb:SetColor(50/255, 50/255, 50/255, 1)
	-- sb:SetColor( sb_r/255, sb_g/255, sb_b/255, sb_a)
	sb:ClearAnchors()
	sb:SetAnchor(TOPLEFT, nil, TOPRIGHT, 0, 0)
	sb:SetAnchor(BOTTOMLEFT, nil, BOTTOMRIGHT, -10, 0)
	sb:SetAlpha(.6)
	sb:SetHitInsets(-4, 0, 5, 0)
	sb:SetWidth(4)
	sb:SetDrawLayer(0)
	sb.thumb = thumb

	thumb:SetWidth(4)
	thumb:SetTexture(nil)
	-- thumb:SetColor(.5, .5, .5)
	thumb:SetColor(120/255, 120/255, 120/255, 1)
	thumb:SetHitInsets(-4, 0, 5, 0)

	-- sb.alphaAnimation	= nil
	-- sb.timeline			= nil

	--Fix Level
	-- sb:SetDrawLevel(1)
	--
	if not contents then return end

	local function offset(hidden)
		if hidden then
			PP.Anchor(contents, --[[#1]] TOPLEFT, nil, TOPLEFT, 0, 0, --[[#2]] true, BOTTOMRIGHT, nil, BOTTOMRIGHT, -6, 0)
		else
			PP.Anchor(contents, --[[#1]] TOPLEFT, nil, TOPLEFT, 0, 0, --[[#2]] true, BOTTOMRIGHT, nil, BOTTOMRIGHT, -15, 0)
		end
	end

	offset(true)

	ZO_PreHookHandler(sb, 'OnEffectivelyShown', function()
		offset(false)
	end)
	ZO_PreHookHandler(sb, 'OnEffectivelyHidden', function()
		offset(true)
	end)

end

PP.Bar = function(control, --[[height]] height, --[[fontSize]] fSize)
	local bar		= control
	local barText	= control:GetNamedChild("Progress")
	local bg		= control:GetNamedChild("BG")
	local overlay	= control:GetNamedChild("Overlay")
	local gloss		= control:GetNamedChild("Gloss")
	local glow		= control:GetNamedChild("GlowContainer")
	local glowC		= control:GetNamedChild("GlowContainerCenter")
	local glowL		= control:GetNamedChild("GlowContainerLeft")
	local glowR		= control:GetNamedChild("GlowContainerRight")
	
	if glow then
		glowC:SetHidden(true)
		glowL:SetHidden(true)
		glowR:SetHidden(true)

		if not glow:GetNamedChild("Backdrop") then
			local glowBG = CreateControl("$(parent)Backdrop", glow, CT_BACKDROP)
			glowBG:SetCenterTexture(nil, 8, 0)
			glowBG:SetCenterColor(0/255, 0/255, 0/255, 0)
			glowBG:SetEdgeTexture(nil, 1, 1, 1, 0)
			glowBG:SetEdgeColor(173/255, 166/255, 132/255, 1)
			PP.Anchor(glowBG, --[[#1]] TOPLEFT, bar, TOPLEFT, -3, -3, --[[#2]] true, BOTTOMRIGHT, bar, BOTTOMRIGHT, 3, 3)
		end
	end

	if barText then
		PP.Font(barText, --[[Font]] PP.f.u67, fSize, "outline", --[[Alpha]] nil, --[[Color]] nil, nil, nil, nil, --[[StyleColor]] 0, 0, 0, .5)
	end

	bg:SetHidden(true)
	overlay:SetHidden(true)
	
	-- bar:SetInheritAlpha(false)
	-- bar:SetInheritScale(false)

	bar:SetHeight(height)
	bar:SetTexture(nil)
	bar:SetLeadingEdge(nil)
	bar:EnableLeadingEdge(false)
	gloss:SetTexture(nil)
	gloss:SetLeadingEdge(nil)
	gloss:EnableLeadingEdge(false)
	gloss:SetColor(0/255, 0/255, 0/255, .1)
	
--
	if not control:GetNamedChild("Backdrop") then
		local barBG = CreateControl("$(parent)Backdrop", control, CT_BACKDROP)

		PP.Anchor(barBG, --[[#1]] TOPLEFT, control, TOPLEFT, -2, -2, --[[#2]] true, BOTTOMRIGHT, control, BOTTOMRIGHT,	2, 2)
		barBG:SetCenterTexture(nil, 8, 0)
		barBG:SetCenterColor(10/255, 10/255, 10/255, .8)
		barBG:SetEdgeTexture(nil, 1, 1, 1, 0)
		barBG:SetEdgeColor(60/255, 60/255, 60/255, .9)
		barBG:SetInsets(-1, -1, 1, 1)
	end
end

--[[
/script
PP.Search(GuiRoot, 'ZO_.*TabsActive', function(control)
	d(control)
end)
]]--
PP.Search = function(control, searched, func)
	local flag = nil
	local function search(control)
		local num = control:GetNumChildren()
		for i = 1, num do
			local child = control:GetChild(i)
			if child then
				local found = string.match(child:GetName(), searched)
				if found and ( flag ~= found )then
					flag = found
					func(GetControl(found))
				end				
				if num ~= 0 then
					search(child)
				end
			end
		end
	end
	search(control)
end

PP.ResetStyle = function()
	for _, list in ipairs(PP.TabList) do
		for typeId in pairs(list.dataTypes) do
			if typeId == 1 or typeId == 2 or typeId == 3 then
				local dataType = ZO_ScrollList_GetDataTypeTable(list, typeId)
				local pool = dataType.pool

				if dataType.height then
					dataType.height = PP.SV.list_skin.list_control_height
				end

				if list.mode == 3 then return end
				for _, control in pairs(pool.m_Free) do
					list.refreshControlMode_1(control, data, dataType)
				end
				for _, control in pairs(pool.m_Active) do
					list.refreshControlMode_1(control, data, dataType)
				end

			end
		end

		if list.uniformControlHeight then
			list.uniformControlHeight = PP.SV.list_skin.list_uniform_control_height
		end
		if list.useFadeGradient then
			ZO_Scroll_SetMaxFadeDistance(list, PP.SV.list_skin.list_fade_distance)
		end
	end
	PLAYER_INVENTORY:UpdateList(INVENTORY_BACKPACK)
	ZO_ScrollList_Commit(ZO_PlayerInventoryList)
	
	ZO_Scroll_SetMaxFadeDistance(ZO_LootAlphaContainerList, PP.SV.list_skin.list_fade_distance)
	ZO_LootAlphaContainerList.uniformControlHeight = PP.SV.list_skin.list_uniform_control_height
	
	ZO_Scroll_SetMaxFadeDistance(MAIL_INBOX.navigationTree.scrollControl, PP.SV.list_skin.list_fade_distance)

	if not TRADING_HOUSE.searchResultsList then return end
	ZO_Scroll_SetMaxFadeDistance(TRADING_HOUSE.searchResultsList, PP.SV.list_skin.list_fade_distance)
end

PP.Hook_m_Factory = function(dataType, callback)
	local pool = dataType.pool
	local exFactory = pool.m_Factory

	pool.m_Factory = function(objectPool)
		local object = exFactory(objectPool)
		callback(object)
		return object
	end
end

PP.Hook_SetupCallback = function(dataType, callback)
	local exSetupCallback = dataType.setupCallback
	dataType.setupCallback = function(control, data)
		exSetupCallback(control, data)
		callback(control, data)
	end
end

--
local stateColor = {
	[BSTATE_NORMAL]				= {173/255,			166/255,		132/255,		1},	--BSTATE_NORMAL
	[BSTATE_PRESSED]			= {220/255,			220/255,		220/255,		1},	--BSTATE_PRESSED
	[BSTATE_DISABLED]			= {173/255 * .5,	166/255 * .5,	132/255 * .5,	1},	--BSTATE_DISABLED_PRESSED
	[BSTATE_DISABLED_PRESSED]	= {220/255 * .5,	220/255 * .5,	220/255 * .5,	1},	--BSTATE_DISABLED
}

function PP:CreateAnimatedButton(parent, --[[#1]] point1, relTo1, relPoint1, x1, y1, texture, height, width, tooltipText, sv, fn)
	local control		= CreateControl(nil, parent, CT_CONTROL)
	local over			= CreateControl(nil, control, CT_TEXTURE)
	local checkBox		= CreateControl(nil, control, CT_TEXTURE)
	parent.control		= control
	control.over		= over
	control.checkBox	= checkBox

	control:SetAnchor(point1 or CENTER, relTo1 or parent, relPoint1 or CENTER, x1 or 0, y1 or 0)
	control:SetDimensions(height, width)
	control:SetMouseEnabled(true)

	over:SetAnchorFill(control)
	over:SetTexture(PP.t.gD)
	over:SetColor(1, 1, 1, 1)
	over:SetAlpha(0)

	checkBox:SetPixelRoundingEnabled(false)
	checkBox:SetAnchor(CENTER)
	checkBox:SetDimensions(height, width)
	checkBox:SetTexture(texture)
	checkBox:SetColor(unpack(stateColor[BSTATE_NORMAL]))

	--anim--
	local animation, timeline	= CreateSimpleAnimation(ANIMATION_SCALE, checkBox)
	checkBox.timeline			= timeline
	animation:SetStartScale(1)
	animation:SetEndScale(.8)
	animation:SetDuration(100)
	--anim--

	function control:SetState(checkState)
		local checkBox			= self.checkBox
		local checkStateType	= type(checkState)
		local state				= false
		
		if checkStateType == "boolean" then
			state = checkState and BSTATE_PRESSED or BSTATE_NORMAL
		elseif checkStateType == "number" then
			state = checkState
		end

		local r, g, b, a = unpack(stateColor[state])
		checkBox:SetColor(r, g, b, a)
		control:SetMouseEnabled(true)

		if state == BSTATE_DISABLED or state == BSTATE_DISABLED_PRESSED then
			control:SetMouseEnabled(false)
		end
	end
	
	function control:SetToggleFunction(fn)
		self.toggleFunction = fn
	end

	control:SetHandler("OnMouseEnter", function(self)
		self.over:SetAlpha(.2)

		if not self.tooltipText then return end
		InitializeTooltip(InformationTooltip, control, BOTTOM, 0, -10)
		SetTooltipText(InformationTooltip, self.tooltipText)
	end)
	control:SetHandler("OnMouseExit", function(self)
		self.over:SetAlpha(0)

		if not self.tooltipText then return end
		ClearTooltip(InformationTooltip)
	end)
	control:SetHandler("OnMouseDown", function(self, button)
		self.checkBox.timeline:PlayForward()
	end)
	control:SetHandler("OnMouseDoubleClick", control:GetHandler("OnMouseDown"))
	control:SetHandler("OnMouseUp", function(self, button, upInside)
		local state = self.toggleFunction()
		self:SetState(state)
		self.checkBox.timeline:PlayBackward()
		PlaySound(SOUNDS.DEFAULT_CLICK)
	end)

	if tooltipText then
		control.tooltipText = tooltipText
	end

	if sv == nil then
		control:SetState(parent:GetState())
		local orig_SetState = parent.SetState
		function parent:SetState(newState, locked)
			orig_SetState(self, newState, locked)
			control:SetState(newState)
		end
		control:SetToggleFunction(function()
			ZO_CheckButton_OnClicked(parent)
			return ZO_CheckButton_IsChecked(parent)
		end)
	else
		control:SetState(sv)
		control:SetToggleFunction(fn)
	end

	return control
end