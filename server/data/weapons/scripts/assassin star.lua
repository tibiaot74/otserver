local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_THROWINGSTAR)
function onGetFormulaValues(cid, level, maglevel)
local skill_level = getPlayerSkill(cid, 4)


	min = -(skill_level * 0.7) * 0.95
	max = -(skill_level * 1.1) * 0.95
	
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
 

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end