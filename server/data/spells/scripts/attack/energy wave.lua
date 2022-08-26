local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.15, 0, -1.9, 0)

local area = createCombatArea(AREA_SQUAREWAVE5, AREADIAGONAL_SQUAREWAVE5)
setCombatArea(combat, area)

function onCastSpell(cid, var)
    if exhaustion.check(cid, 30030) then
	 doPlayerSendCancel(cid, "You are exhausted.")
     else
	exhaustion.set(cid, 30030, 1)
	return doCombat(cid, combat, var)
	end
end
