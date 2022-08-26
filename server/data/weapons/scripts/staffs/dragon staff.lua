local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)
function onGetFormulaValues(cid, level, maglevel)
	min = -(level * 0.5 + maglevel * 0.7) * 0.9
	max = -(level * 0.7 + maglevel * 0.8) * 1.1
	
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end