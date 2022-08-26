local exhaust = createConditionObject(CONDITION_EXHAUSTED)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, 200)

function onUse(cid, item, frompos, item2, topos)
if(hasCondition(cid, CONDITION_EXHAUSTED) == TRUE) then
return TRUE
end
YELLOW = {00, 00}
BLUE = {00, 00}
PURPLE = {2080, 2081, 2082, 2083}
WHITE = {00, 00}
RED = {00, 00}
if isInArray(YELLOW, item.itemid) == 1 then
doSendMagicEffect(frompos, 21)

elseif isInArray(BLUE, item.itemid) == 1 then
doSendMagicEffect(frompos, 23)

elseif isInArray(PURPLE, item.itemid) == 1 then
doSendMagicEffect(frompos, 22)

elseif isInArray(RED, item.itemid) == 1 then
doSendMagicEffect(frompos, 19)

elseif isInArray(WHITE, item.itemid) == 1 then
doSendMagicEffect(frompos, 24)

elseif item.itemid == 2369 then
	if math.random(1,10) == 1 then
	doRemoveItem(item.uid)
	doSendMagicEffect(frompos, 21)
	doPlayerAddItem(cid, Cfgrape)
	else
	doSendMagicEffect(frompos, 21)
	doPlayerAddItem(cid, Cfgrape)
	end

elseif item.itemid == 2093 then
doSendMagicEffect(getPlayerPosition(cid), 2)
elseif item.itemid == 2099 then
doSendMagicEffect(getPlayerPosition(cid), 2)

else
doSendMagicEffect(frompos, 18)
end
doAddCondition(cid, exhaust)
	return 1
end
