local mod	= DBM:NewMod("TheramoreFall", "DBM-Scenario-MoP", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 7856 $"):sub(12, -3))
mod:SetCreatureID(65442)--Warlord Rok'nah
--mod:SetModelID(43283)
mod:SetZone()

mod:RegisterCombat("combat")
--mod:RegisterKill("yell", L.Victory)--maybe not needed, if unit_died for 65442 fires
mod:SetWipeTime(1200)--Lame hack, I need to write an exclusions function so i can set, on a mod level, what determines end combat, so at very least we can exclude combat_regen

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED"
)

local warnWarEnginesSights		= mod:NewTargetAnnounce(114570, 4)

local specWarnWarEnginesSights	= mod:NewSpecialWarningMove(114570)--Actually used by his trash, but in a speed run, you tend to pull it all together
local yellWarEnginesSights		= mod:NewYell(114570)

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(114570) then
		warnWarEnginesSights:Show(args.destName)
		if args:IsPlayer() then
			specWarnWarEnginesSights:Show()
			yellWarEnginesSights:Yell()
		end
	end
end
