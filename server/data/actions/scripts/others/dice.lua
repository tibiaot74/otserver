local exhaust = createConditionObject(CONDITION_EXHAUSTED)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, 500)

function onUse(cid, item, fromPosition, itemEx, toPosition)
if(hasCondition(cid, CONDITION_EXHAUSTED) == TRUE) then
return TRUE
end
	local value = math.random(5792, 5797)
	doTransformItem(item.uid, value)
	doSendMagicEffect(fromPosition, 26)
	doSendAnimatedText(fromPosition, "".. value - 5791 .."", 180)
	doAddCondition(cid, exhaust)
	return TRUE
end