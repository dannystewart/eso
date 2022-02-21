-- Local instances of Global tables --
local PA = PersonalAssistant
local PAC = PA.Constants
local PAHF = PA.HelperFunctions

-- ---------------------------------------------------------------------------------------------------------------------

local function _updateSavedVarsVersion(savedVarsVersion)
    local PAISavedVars = PA.SavedVars.Integration
    if tonumber(PAISavedVars.savedVarsVersion) < savedVarsVersion then
        PAHF.debuglnAuthor(table.concat({ PAC.COLORED_TEXTS.PA, " - Patched PAIntegration from [", tostring(PAISavedVars.savedVarsVersion), "] to [", tostring(savedVarsVersion), "]"}))
        PAISavedVars.savedVarsVersion = savedVarsVersion
    end
end

local function _getIsPatchNeededInfo(savedVarsVersion)
    local PAISavedVars = PA.SavedVars.Integration
    local currentVersion = tonumber(PAISavedVars.savedVarsVersion) or PAC.ADDON.VERSION_ADDON
    return savedVarsVersion, (currentVersion < savedVarsVersion)
end

local function _setLocalProfileCounter(PASavedVars)
    local profileCounter = PASavedVars.General.profileCounter
    PASavedVars.Integration.profileCounter = (type(profileCounter) == 'number' and profileCounter) or 0
end

-- ---------------------------------------------------------------------------------------------------------------------

local function _applyPatch_2_5_11(savedVarsVersion, isPatchingNeeded)
    if isPatchingNeeded then
        local PASavedVars = PA.SavedVars
        -- copy the profileCounter value
        _setLocalProfileCounter(PASavedVars)
        -- then loop through all profiles and copy the profileName
        for profileNo = 1, PASavedVars.General.profileCounter do
            if istable(PASavedVars.Integration[profileNo]) then
                PASavedVars.Integration[profileNo].name = PASavedVars.General[profileNo].name
            end
        end
        _updateSavedVarsVersion(savedVarsVersion)
    end
end

-- local function _applyPatch_x_x_x(savedVarsVersion, isPatchingNeeded)

-- ---------------------------------------------------------------------------------------------------------------------

local function applyPatchIfNeeded()
    -- Patch 2.5.11     April 23, 2021
    _applyPatch_2_5_11(_getIsPatchNeededInfo(020511))
end

-- ---------------------------------------------------------------------------------------------------------------------
-- Export
PA.SavedVarsPatcher.applyPAIntegrationPatchIfNeeded = applyPatchIfNeeded