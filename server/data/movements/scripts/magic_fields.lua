local poison = createConditionObject(CONDITION_POISON)
setConditionParam(poison, CONDITION_PARAM_DELAYED, 3)
addDamageCondition(poison, 4, 3000, -5)
addDamageCondition(poison, 5, 3000, -4)
addDamageCondition(poison, 7, 3000, -3)
addDamageCondition(poison, 10, 3000, -2)
addDamageCondition(poison, 19, 3000, -1)

local energy = createConditionObject(CONDITION_ENERGY)
setConditionParam(energy, CONDITION_PARAM_DELAYED, 3)
addDamageCondition(energy, 1, 3000, -25)

local fire20 = createConditionObject(CONDITION_FIRE)
setConditionParam(fire20, CONDITION_PARAM_DELAYED, 3)
addDamageCondition(fire20, 7, 9000, -10)

local fire10 = createConditionObject(CONDITION_FIRE)
setConditionParam(fire10, CONDITION_PARAM_DELAYED, 3)
addDamageCondition(fire10, 3, 9000, -5)

function onStepIn(cid, item, pos)
if isPlayer(cid) == TRUE then
pos = getPlayerPosition(cid)

if isInArray(POISON_FIELD, item.itemid) == 1 then
doTargetCombatHealth(0, cid, COMBAT_POISONDAMAGE, -5, -5, CONST_ME_GREEN_RINGS)
doAddCondition(cid, poison)

elseif isInArray(ENERGY_FIELD, item.itemid) == 1 then
doTargetCombatHealth(0, cid, COMBAT_ENERGYDAMAGE, -30, -30, CONST_ME_ENERGYHIT)
doAddCondition(cid, energy)

elseif isInArray(FIRE_FIELD_20, item.itemid) == 1 then
doTargetCombatHealth(0, cid, COMBAT_FIREDAMAGE, -20, -20, CONST_ME_HITBYFIRE)
doAddCondition(cid, fire20)

elseif isInArray(FIRE_FIELD_10, item.itemid) == 1 then
doTargetCombatHealth(0, cid, COMBAT_FIREDAMAGE, -10, -10, CONST_ME_HITBYFIRE)
doAddCondition(cid, fire10)


end
	return 1
end
end