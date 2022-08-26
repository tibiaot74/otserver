local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
function onGetFormulaValues(cid, level, maglevel)
	min = -(level * 0.0 + maglevel * 0.0) - 60
	max = -(level * 0.0 + maglevel * 0.0) - 70
	return min, max
end
setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end
