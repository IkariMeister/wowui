local MER, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_Minimap')
local COMP = MER:GetModule('MER_Compatibility')
local LCG = LibStub('LibCustomGlow-1.0')

local _G = _G
local select, unpack = select, unpack
local format = string.format

local C_Calendar_GetNumPendingInvites = C_Calendar.GetNumPendingInvites
local CreateFrame = CreateFrame
local GetInstanceInfo = GetInstanceInfo
local Minimap = _G.Minimap
local hooksecurefunc = hooksecurefunc

local r, g, b = unpack(E.media.rgbvaluecolor)

function module:CheckMail()
	local inv = C_Calendar_GetNumPendingInvites()
	local mail = _G["MiniMapMailFrame"]:IsShown() and true or false

	if inv > 0 and mail then -- New invites and mail
		LCG.PixelGlow_Start(Minimap.backdrop, {242, 5/255, 5/255, 1}, 8, -0.25, nil, 1)
	elseif inv > 0 and not mail then -- New invites and no mail
		LCG.PixelGlow_Start(Minimap.backdrop, {1, 30/255, 60/255, 1}, 8, -0.25, nil, 1)
	elseif inv == 0 and mail then -- No invites and new mail
		LCG.PixelGlow_Start(Minimap.backdrop, {r, g, b, 1}, 8, -0.25, nil, 1)
	else -- None of the above
		LCG.PixelGlow_Stop(Minimap.backdrop)
	end
end

function module:MiniMapCoords()
	if E.db.mui.maps.minimap.coords.enable ~= true then return end

	local pos = E.db.mui.maps.minimap.coords.position or "BOTTOM"
	local Coords = MER:CreateText(Minimap, "OVERLAY", 12, "OUTLINE", "CENTER")
	Coords:SetTextColor(unpack(E["media"].rgbvaluecolor))
	Coords:Hide()

	if pos == "BOTTOM" then
		Coords:Point(pos, 0, 2)
	elseif pos == "TOP" and (E.db.general.minimap.locationText == 'SHOW' or E.db.general.minimap.locationText == 'MOUSEOVER') then
		Coords:Point(pos, 0, -12)
	elseif pos == "TOP" and E.db.general.minimap.locationText == 'HIDE' then
		Coords:Point(pos, 0, -2)
	else
		Coords:Point(pos, 0, 0)
	end

	if E.db.mui.maps.minimap.rectangleMinimap.enable then
		if pos == "BOTTOM" then
			Coords:Point(pos, 0, 32)
		elseif pos == "TOP" and (E.db.general.minimap.locationText == 'SHOW' or E.db.general.minimap.locationText == 'MOUSEOVER') then
			Coords:Point(pos, 0, -32)
		elseif pos == "TOP" and E.db.general.minimap.locationText == 'HIDE' then
			Coords:Point(pos, 0, -2)
		else
			Coords:Point(pos, 0, 0)
		end
	end

	Minimap:HookScript("OnUpdate",function()
		if select(2, GetInstanceInfo()) == "none" then
			local x, y = E.MapInfo.x or 0, E.MapInfo.y or 0
			if x and y and x > 0 and y > 0 then
				Coords:SetText(format("%d,%d", x*100, y*100))
			else
				Coords:SetText("")
			end
		end
	end)

	Minimap:HookScript("OnEnter", function() Coords:Show() end)
	Minimap:HookScript("OnLeave", function() Coords:Hide() end)
end

function module:StyleMinimap()
	if not E.db.mui.maps.minimap.rectangleMinimap.enable or (COMP.SLE and E.private.sle.minimap.rectangle) then
		Minimap:Styling(true, true, false)
	end
end

function module:QueueStatus()
	if E.private.general.minimap.enable ~= true or not E.db.mui.maps.minimap.queueStatus then return end

	-- QueueStatus Button
	_G.QueueStatusMinimapButtonBorder:Hide()
	_G.QueueStatusMinimapButtonIconTexture:SetTexture(nil)

	local queueIcon = Minimap:CreateTexture(nil, "ARTWORK")
	queueIcon:Point("CENTER", _G.QueueStatusMinimapButton)
	queueIcon:SetSize(50, 50)
	queueIcon:SetTexture("Interface\\Minimap\\Raid_Icon")

	local anim = queueIcon:CreateAnimationGroup()
	anim:SetLooping("REPEAT")
	anim.rota = anim:CreateAnimation("Rotation")
	anim.rota:SetDuration(2)
	anim.rota:SetDegrees(360)

	hooksecurefunc("QueueStatusFrame_Update", function()
		queueIcon:SetShown(_G.QueueStatusMinimapButton:IsShown())
	end)
	hooksecurefunc("EyeTemplate_StartAnimating", function() anim:Play() end)
	hooksecurefunc("EyeTemplate_StopAnimating", function() anim:Stop() end)
end

function module:Initialize()
	if E.private.general.minimap.enable ~= true then return end

	local db = E.db.mui.maps
	MER:RegisterDB(self, "minimap")

	-- Add a check if the backdrop is there
	if not Minimap.backdrop then
		Minimap:CreateBackdrop("Default", true)
	end

	self:MiniMapCoords()
	self:MinimapPing()
	self:StyleMinimap()
	self:QueueStatus()

	if E.db.mui.maps.minimap.flash then
		self:RegisterEvent("CALENDAR_UPDATE_PENDING_INVITES", "CheckMail")
		self:RegisterEvent("UPDATE_PENDING_MAIL", "CheckMail")
		self:RegisterEvent("PLAYER_ENTERING_WORLD", "CheckMail")
		self:HookScript(_G["MiniMapMailFrame"], "OnHide", "CheckMail")
		self:HookScript(_G["MiniMapMailFrame"], "OnShow", "CheckMail")
	end
end

MER:RegisterModule(module:GetName())
