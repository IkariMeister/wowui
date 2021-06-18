local MER, E, L, V, P, G = unpack(select(2, ...))
local S = E:GetModule('Skins')

-- Cache global variables
-- Lua functions
local _G = _G
local select, unpack = select, unpack
-- WoW API
local hooksecurefunc = hooksecurefunc
-- GLOBALS:

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function reskinTableAttribute(frame)
	frame:Styling()
end

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.debug ~= true or E.private.muiSkins.blizzard.debug ~= true then return end

	local EventTraceFrame = _G.EventTraceFrame
	EventTraceFrame:Styling()

	-- Table Attribute Display
	reskinTableAttribute(_G.TableAttributeDisplay)

	hooksecurefunc(_G.TableInspectorMixin, "InspectTable", function(self)
		reskinTableAttribute(self)
	end)
end

S:AddCallbackForAddon("Blizzard_DebugTools", "mUIDebugTools", LoadSkin)
