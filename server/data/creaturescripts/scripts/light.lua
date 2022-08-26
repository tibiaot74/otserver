local light = createConditionObject(CONDITION_LIGHT, -1, false, 0, CONDITIONID_DEFAULT)
	setConditionParam(light, CONDITION_PARAM_LIGHT_LEVEL, 8)
	setConditionParam(light, CONDITION_PARAM_LIGHT_COLOR, 215)
	
function onLogin(cid)
local condition, type, subId, name = light, CONDITION_LIGHT, 0, "full light"
if isPremium(cid) == true then
doAddCondition(cid, condition)
else
doRemoveCondition(cid, type, subId, CONDITIONID_DEFAULT)
end
return true
end