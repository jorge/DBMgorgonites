local mod	= DBM:NewMod(311, "DBM-DragonSoul", nil, 187)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 6528 $"):sub(12, -3))
mod:SetCreatureID(12345)
mod:SetModelID(39094)
mod:SetZone()
mod:SetUsedIcons()

mod:RegisterCombat("combat")

mod:RegisterEvents(
)