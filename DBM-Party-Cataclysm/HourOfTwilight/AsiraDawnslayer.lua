local mod	= DBM:NewMod("AsiraDawnslayer", "DBM-Party-Cataclysm", 14)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 6526 $"):sub(12, -3))
mod:SetCreatureID(12345)
mod:SetModelID(38995)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
)
