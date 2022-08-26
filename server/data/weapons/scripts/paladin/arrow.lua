local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ARROW)
function onGetFormulaValues(cid, level, maglevel)
local skill_level = getPlayerSkill(cid, 4)
local exp_level = getPlayerLevel(cid) * 0.20
	min = -(skill_level * 0.1) + exp_level
	max = -(skill_level * 2.21) + exp_level
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
 

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end