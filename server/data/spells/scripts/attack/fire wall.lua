local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1492)

local area = createCombatArea(AREA_WALLFIELD, AREADIAGONAL_WALLFIELD)
setCombatArea(combat, area)

function onCastSpell(cid, var)
    if exhaustion.check(cid, 30030) then
	 doPlayerSendCancel(cid, "You are exhausted.")
     else
	exhaustion.set(cid, 30030, 1)
	return doCombat(cid, combat, var)
	end
end
