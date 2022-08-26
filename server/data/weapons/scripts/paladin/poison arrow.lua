local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISONARROW)
function onGetFormulaValues(cid, level, maglevel)
local skill_level = getPlayerMagLevel(cid)
local exp_level = getPlayerLevel(cid) * 0.20
	min = -(skill_level * 0.1) + exp_level
	max = -(skill_level * 1.94) + exp_level
	
	return min, max
end

local condition = createConditionObject(CONDITION_POISON)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 50, 4000, -1)
setCombatCondition(combat, condition)

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end
