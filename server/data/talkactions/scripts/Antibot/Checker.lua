local exhaust = createConditionObject(CONDITION_EXHAUSTED)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, 3000)

local exhaust_add = createConditionObject(CONDITION_EXHAUSTED)
setConditionParam(exhaust_add, CONDITION_PARAM_TICKS, 3000)

function onSay(cid,words,param)

if(hasCondition(cid, CONDITION_EXHAUSTED) == TRUE) then
doPlayerSendDefaultCancel(cid, "Wait until you lose your exchaust before you use this!")
doAddCondition(cid, exhaust_add)
return TRUE
end
doAddCondition(cid, exhaust)

if getPlayerStorageValue(cid, 6669) >= 1 or getPlayerStorageValue(cid, 6669) <= 666 then

		answer = getNumberValue(param)
		if answer >= 0 or answer <= 100 then
			answer_correct = getNumberValue(getPlayerStorageValue(cid, 6668))
			if answer == answer_correct then
			setPlayerStorageValue(cid, 6668,0)
			setPlayerStorageValue(cid, 6669,0)
			doPlayerSendTextMessage(cid, 22, "Correct code! anti-bot system deactivated.")
			else
			doPlayerSendTextMessage(cid, 18, "WRONG! Try again!")
			end
		end		

end
end