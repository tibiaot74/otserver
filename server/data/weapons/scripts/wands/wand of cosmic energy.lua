local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
function onGetFormulaValues(cid, level, maglevel)
	min = -(level * 0.0 + maglevel * 0.0) - 40
	max = -(level * 0.0 + maglevel * 0.0) - 50
	return min, max
end
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end
