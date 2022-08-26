local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.1, 0, -0.2, 0)

function onCastSpell(cid, var)
    if exhaustion.check(cid, 30030) then
	 doPlayerSendCancel(cid, "You are exhausted.")
     else
	exhaustion.set(cid, 30030, 1)
	return doCombat(cid, combat, var)
	end
end
