local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
function onGetFormulaValues(cid, level, maglevel)
local skill = getPlayerSkill(cid, 3)

	min = -(38 * skill * 3 + level) / 85 * 0.971
	max = -(38 * skill * 3 + level) / 85 * 1.879

	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
 

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end