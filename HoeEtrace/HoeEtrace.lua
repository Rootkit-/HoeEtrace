--[[
	HoeEtrace: A simple HoeEtraceometer.
	Author: Trentin - > Quel -> tainted -> TotalPackage
--]]

local menutext = "Titan|cffffaa00Etra|r|cffff8800ce|r"
local buttonlabel = "-- "
local ID = "HoeEtrace"

-- Main button frame and addon base
local f = CreateFrame("Button", "TitanPanelHoeEtraceButton", UIParent, "TitanPanelComboTemplate")
f:SetFrameStrata("FULLSCREEN")
f:SetScript("OnEvent", function(this, event, ...) this[event](this, ...) end)
f:RegisterEvent("ADDON_LOADED")
local ff = CreateFrame("Button", "TitanPanelHoeEtracefButton", f, "SecureActionButtonTemplate")
ff:SetPoint("CENTER", "TitanPanelHoeEtraceButton")
ff:SetWidth(16)
ff:SetHeight(16)
ff:RegisterForClicks("LeftButtonUp","RightButtonUp");
ff:SetAttribute("type1", "macro")
ff:SetAttribute("macrotext1", "/eventtrace start")
ff:SetAttribute("type2", "macro")
ff:SetAttribute("macrotext2", "/fstack start")
---------------------------
function f:ADDON_LOADED(a1)
---------------------------
	if a1 ~= "HoeEtrace" then return end
	self:UnregisterEvent("ADDON_LOADED")
	self.ADDON_LOADED = nil
	
	self.registry = {
		id = ID,
		menuText = menutext,
		buttonTextFunction = "TitanPanelHoeEtraceButton_GetButtonText",
		tooltipTitle = ID,
		tooltipTextFunction = "TitanPanelHoeEtraceButton_GetTooltipText",
		icon = "Interface\\AddOns\\HoeEtrace\\sodaHi",
		iconWidth = 16,
		category = "Information",
		savedVariables = {
			DisplayOnRightSide = true,
			ShowIcon = true,
			ShowLabelText = true
		},
	}


end

----------------------------------------------
function TitanPanelHoeEtraceButton_GetButtonText()
----------------------------------------------
return "  "
end

-----------------------------------------------
function TitanPanelHoeEtraceButton_GetTooltipText()
-----------------------------------------------
	return ""
end

