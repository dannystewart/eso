TB_Research = ZO_Object:Subclass()

function TB_Research:New(...)
    local object = ZO_Object.New(self)
    object:Initialize(...)
    return object
end

function TB_Research:Initialize(parent)
	self.parent = parent
end

function TB_Research:Research_OnMouseEnter(control)
	local name, _, _, _ = GetSmithingResearchLineInfo(control.craftingSkillType, control.researchLineIndex)
	local traitType, _, _ = GetSmithingResearchLineTraitInfo(control.craftingSkillType, control.researchLineIndex, control.traitIndex)

	InitializeTooltip(InformationTooltip, control, LEFT, 5, 0)
	TraitBuddy:BuildTooltipTitle(InformationTooltip, name.." - "..GetString("SI_ITEMTRAITTYPE", traitType))

	ZO_Tooltip_AddDivider(InformationTooltip)
	local k, r, can = TraitBuddy:GetWhoKnows(control.craftingSkillType, control.researchLineIndex, control.traitIndex, true)
	TraitBuddy:BuildTooltip(InformationTooltip, k, r, can)

	local c = TraitBuddy:GetCharacter(control.character)
	for i=1,#r do
		if r[i] == c.name then
			local timeRemainingSecs = GetDiffBetweenTimeStamps(c.research[control.craftingSkillType][control.researchLineIndex][control.traitIndex].done, GetTimeStamp())
			InformationTooltip:AddVerticalPadding(10)
			InformationTooltip:AddLine(tostring(ZO_FormatTime(timeRemainingSecs, TIME_FORMAT_STYLE_DESCRIPTIVE_SHORT, TIME_FORMAT_PRECISION_SECONDS, TIME_FORMAT_DIRECTION_DESCENDING)), "ZoFontGame", 1,1,1, LEFT, MODIFY_TEXT_TYPE_NONE, TEXT_ALIGN_CENTER, true)
		end
	end
	TraitBuddy.ui:AddLinkToChat(InformationTooltip, 10)
end

function TB_Research:Show()
	if self.parent:IsHidden() then
		self.parent:SetHidden(false)
	end
end

function TB_Research:Hide()
	if not self.parent:IsHidden() then
		self.parent:SetHidden(true)
	end
end

function TB_Research:AddCharacters()
	--Add characters to the research section
	local parent = self.parent:GetNamedChild("ScrollChild")
	for id,c in pairs(TraitBuddy:GetCharacters()) do
		local control = CreateControlFromVirtual("$(parent)Character", parent, "TB_ResearchCharacter", id)
		control:GetNamedChild("Name"):SetText(c.name)
	end
end

local function GetNumTraitsKnown(character, craftingSkillType)
	local numKnown = 0
	for researchLineIndex = 1, GetNumSmithingResearchLines(craftingSkillType) do
		local _, _, numTraits, _ = GetSmithingResearchLineInfo(craftingSkillType, researchLineIndex)
		for traitIndex = 1, numTraits do
			if TraitBuddy:IsTraitKnown(character, craftingSkillType, researchLineIndex, traitIndex) then
				numKnown = numKnown + 1
			end
		end
	end
	return numKnown
end

function TB_Research:Character_Initialize(control)
	control:GetNamedChild("P"..CRAFTING_TYPE_BLACKSMITHING):GetNamedChild("Icon"):SetTexture("esoui/art/inventory/inventory_tabicon_craftbag_blacksmithing_up.dds")
	control:GetNamedChild("P"..CRAFTING_TYPE_CLOTHIER):GetNamedChild("Icon"):SetTexture("esoui/art/inventory/inventory_tabicon_craftbag_clothing_up.dds")
	control:GetNamedChild("P"..CRAFTING_TYPE_WOODWORKING):GetNamedChild("Icon"):SetTexture("esoui/art/inventory/inventory_tabicon_craftbag_woodworking_up.dds")
	control:GetNamedChild("P"..CRAFTING_TYPE_JEWELRYCRAFTING):GetNamedChild("Icon"):SetTexture("esoui/art/inventory/inventory_tabicon_craftbag_jewelrycrafting_up.dds")
end

function TB_Research:Research_Initialize(control)
	control.timer = ZO_TimerBar:New(control:GetNamedChild("TimerBar"))
	control.timer:SetDirection(TIMER_BAR_COUNTS_DOWN)
	control.timer:SetTimeFormatParameters(TIME_FORMAT_STYLE_SHOW_LARGEST_TWO_UNITS, TIME_FORMAT_PRECISION_TWELVE_HOUR)
--[[
	if (GetCVar("language.2")=="ru") then
		control.timer:SetTimeFormatParameters(TIME_FORMAT_STYLE_SHOW_LARGEST_UNIT_DESCRIPTIVE, TIME_FORMAT_PRECISION_TWELVE_HOUR)
	else
		control.timer:SetTimeFormatParameters(TIME_FORMAT_STYLE_COLONS, TIME_FORMAT_PRECISION_TWELVE_HOUR)
	end
]]--
	control.timer:SetFades(true, 0.125)
	control.character = 0
	control.craftingSkillType = nil
	control.researchLineIndex = nil
	control.traitIndex = nil
end

function TB_Research:UpdateUI()
	--Add traits being researched to research screen
	if not TraitBuddy.ui:IsCreated() then
		TraitBuddy.ui.updatelater:UpdateResearchUI()
		return
	end

	local craftingSkillTypes = TraitBuddy:GetCraftingSkillTypes()
	--Dynamically figure out which research to show
	local show = {}
	local characters = TraitBuddy:GetCharacters()
	for id,c in pairs(characters) do
		show[id] = {
			section = false,
			research = {}
		}
		--Check research + settings first
		for key,craftingSkillType in pairs(craftingSkillTypes) do
			if GetNumTraitsKnown(c, craftingSkillType) == TraitBuddy:GetMaxNumTraits(craftingSkillType) then
				--Hide the research if every trait has been researched
				show[id].research[craftingSkillType] = false
			else
				--Show research depending on the users setting
				show[id].research[craftingSkillType] = c.show[TraitBuddy:GetResearchShowName(craftingSkillType)]
			end
		end
		--Hide the character entirely as appropriate
		show[id].section = show[id].research[CRAFTING_TYPE_BLACKSMITHING] or show[id].research[CRAFTING_TYPE_CLOTHIER] or show[id].research[CRAFTING_TYPE_WOODWORKING] or show[id].research[CRAFTING_TYPE_JEWELRYCRAFTING]
		local control = self.parent:GetNamedChild("ScrollChild"):GetNamedChild("Character"..id)
		control:SetHidden(not show[id].section)
	end
	--Now build up the screen
	local lastCharacter
	for k,id in ipairs(TraitBuddy:GetCharacters(true)) do
		local c = characters[id]
		if show[id].section then
			local craftHeight = 0
			local character = self.parent:GetNamedChild("ScrollChild"):GetNamedChild("Character"..id)
			if lastCharacter then
				character:SetAnchor(TOPLEFT, lastCharacter, BOTTOMLEFT, 0, 30)
			end
			for key,craftingSkillType in pairs(craftingSkillTypes) do
				local craft = character:GetNamedChild("P"..craftingSkillType)
				craft:SetHidden(not show[id].research[craftingSkillType])
				if show[id].research[craftingSkillType] then
					--Hide the previous controls if they existed
					for iControl = 1, 3 do
						local ctrl = craft:GetNamedChild("Research"):GetNamedChild(iControl)
						if ctrl then
							ctrl:SetHidden(true)
						end
					end
					local lastResearch
					local numResearching = 0
					for researchLineIndex = 1, GetNumSmithingResearchLines(craftingSkillType) do
						local _, icon, numTraits, timeRequiredForNextResearchSecs = GetSmithingResearchLineInfo(craftingSkillType, researchLineIndex)
						for traitIndex = 1, numTraits do
							if TraitBuddy:IsTraitBeingResearched(c, craftingSkillType, researchLineIndex, traitIndex) then
								numResearching = numResearching + 1
								local researching = craft:GetNamedChild("Research"):GetNamedChild(numResearching)
								if not researching then
									researching = CreateControlFromVirtual("$(parent)", craft:GetNamedChild("Research"), "TB_Researching", numResearching)
								end
								researching:SetHidden(false)
								researching.character = id
								researching.craftingSkillType = craftingSkillType
								researching.researchLineIndex = researchLineIndex
								researching.traitIndex = traitIndex
								if lastResearch then
									researching:SetAnchor(TOPLEFT, lastResearch, BOTTOMLEFT, 0, 0)
								end
								researching:GetNamedChild("Icon"):SetTexture(icon)
								local timeRemainingSecs = GetDiffBetweenTimeStamps(c.research[craftingSkillType][researchLineIndex][traitIndex].done, GetTimeStamp())
								local timeElapsed = c.research[craftingSkillType][researchLineIndex][traitIndex].duration - timeRemainingSecs
								local now = GetFrameTimeSeconds()
								researching.timer:Start(now - timeElapsed, now + timeRemainingSecs)
								lastResearch = researching
							end
						end
					end
					craft:GetNamedChild("NumResearching"):SetText(numResearching.."/"..c.research[craftingSkillType].MaxSimultaneousResearch)
					if numResearching*32 > craftHeight then
						craftHeight = numResearching*32
					end
				end
				craft:SetHeight(craftHeight+37)
			end
			lastCharacter = character
			character:SetHeight(craftHeight+37+24)
		end
	end
end