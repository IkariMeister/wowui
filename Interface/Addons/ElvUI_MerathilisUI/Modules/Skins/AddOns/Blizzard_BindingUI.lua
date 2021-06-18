local MER, E, L, V, P, G = unpack(select(2, ...))
local MERS = MER:GetModule('MER_Skins')
local S = E:GetModule('Skins')

--Cache global variables
--Lua functions
local _G = _G
local select = select
--WoW API / Variables
-- GLOBALS:

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function styleBindingButton(bu)
	local selected = bu.selectedHighlight

	for i = 1, 9 do
		select(i, bu:GetRegions()):Hide()
	end

	selected:SetTexture(E["media"].normTex)
	selected:SetPoint("TOPLEFT", 1, -1)
	selected:SetPoint("BOTTOMRIGHT", -1, 1)
	selected:SetColorTexture(r, g, b,.2)

	MERS:Reskin(bu)
end

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.binding ~= true or E.private.muiSkins.blizzard.binding ~= true then return end

	_G.KeyBindingFrame:Styling()

	for i = 1, _G.KEY_BINDINGS_DISPLAYED do
		local button1 = _G["KeyBindingFrameKeyBinding"..i.."Key1Button"]
		local button2 = _G["KeyBindingFrameKeyBinding"..i.."Key2Button"]

		button2:SetPoint("LEFT", button1, "RIGHT", 1, 0)

		styleBindingButton(button1)
		styleBindingButton(button2)
	end

	local line = _G.KeyBindingFrame:CreateTexture(nil, "ARTWORK")
	line:SetSize(1, 546)
	line:SetPoint("LEFT", 205, 10)
	line:SetColorTexture(1, 1, 1, .2)

	_G.QuickKeybindFrame:Styling()
end

S:AddCallbackForAddon("Blizzard_BindingUI", "mUIBinding", LoadSkin)
