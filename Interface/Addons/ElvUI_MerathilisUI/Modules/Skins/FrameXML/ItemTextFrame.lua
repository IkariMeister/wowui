local MER, E, L, V, P, G = unpack(select(2, ...))
local MERS = MER:GetModule('MER_Skins')
local S = E:GetModule('Skins')

--Cache global variables
local _G = _G
local select = select
--WoW API / Variables
-- GLOBALS:

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.gossip ~= true or E.private.muiSkins.blizzard.gossip ~= true then return end

	local ItemTextFrame = _G.ItemTextFrame
	ItemTextFrame:Styling()
end

S:AddCallback("mUIItemText", LoadSkin)
