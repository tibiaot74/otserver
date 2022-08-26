local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)

local condition = createConditionObject(CONDITION_POISON)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
setConditionParam(condition, CONDITION_PARAM_MINVALUE, -200)
setConditionParam(condition, CONDITION_PARAM_MAXVALUE, -250)
setConditionParam(condition, CONDITION_PARAM_STARTVALUE, -50)
setConditionParam(condition, CONDITION_PARAM_TICKINTERVAL, 2000)
setConditionParam(condition, CONDITION_PARAM_FORCEUPDATE, true)
setCombatCondition(combat, condition)

local area = createCombatArea(AREA_CROSS6X6)
setCombatArea(combat, area)

function onCastSpell(cid, var)
    if exhaustion.check(cid, 30030) then
	 doPlayerSendCancel(cid, "You are exhausted.")
     else
	exhaustion.set(cid, 30030, 1)
	return doCombat(cid, combat, var)
	end
end
