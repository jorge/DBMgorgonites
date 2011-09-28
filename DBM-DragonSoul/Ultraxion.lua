if tonumber((select(2, GetBuildInfo()))) <= 14545 then return end

local mod	= DBM:NewMod(331, "DBM-DragonSoul", nil, 187)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 6536 $"):sub(12, -3))
mod:SetCreatureID(12345)
mod:SetModelID(39099)
mod:SetZone()
mod:SetUsedIcons()

mod:RegisterCombat("combat")

mod:RegisterEvents(
)