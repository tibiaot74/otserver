local condition = createConditionObject(CONDITION_DRUNK)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)

function onUse(cid, item, frompos, item2, topos)
        if(hasCondition(cid, CONDITION_EXHAUSTED) == TRUE) then
		doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
		return TRUE
	end
	if item2.itemid == 1 then
		if item.type == 0 then
			doPlayerSendCancel(cid, "It is empty.")
		else
			if item2.uid == cid then
				if item.type == 3 then
					doPlayerSay(cid, "Aaaah...", 1)
                    doAddCondition(cid, condition)
				elseif item.type == 15 then
					doPlayerSay(cid, "Aaaah...", 1)
					doAddCondition(cid, condition)
				else
					doPlayerSay(cid, "Gulp.", 1)
				end
			else
		doRemoveItem(item.uid,1)
				splash = doCreateItem(2025, item.type, topos)
				doDecayItem(splash)
			end
		end
	elseif item2.itemid >= 490 and item2.itemid <= 517 
	or item2.itemid >= 618 and item2.itemid <= 629 
	or item2.itemid == 1368 or item2.itemid == 1369 
	or item2.itemid >= 4820 and item2.itemid <= 4825 
	or item2.itemid >= 4828 and item2.itemid <= 4831 
	or item2.itemid >= 4608 and item2.itemid <= 4666 then
		doChangeTypeItem(item.uid, 1)
	elseif item2.itemid == 103 then
		doChangeTypeItem(item.uid, 19)
	elseif item2.itemid >= 598 and item2.itemid < 601 
	or item2.itemid == 1509 
	or item2.itemid >= 518 and item2.itemid <= 529 then
		doChangeTypeItem(item.uid, 26)
	elseif item2.itemid >= 351 and item2.itemid <= 355 then
		doChangeTypeItem(item.uid, 19)
	elseif item2.itemid >= 602 and item2.itemid <= 605 
	or item2.itemid >= 4691 and item2.itemid <= 4755 
	or item2.itemid == 4758 then
		doChangeTypeItem(item.uid, 28)
	elseif item2.itemid == 1771 then
		doChangeTypeItem(item.uid, 1)
	elseif item2.itemid == 1772 then
		doChangeTypeItem(item.uid, 3)
	elseif item2.itemid == 1773 then
		doChangeTypeItem(item.uid, 15)
	elseif item2.itemid > 2806 and item2.itemid < 3132 
	or item2.itemid >= 4251 and item2.itemid <= 4327 then
		doChangeTypeItem(item.uid, 2)
	else
		if item.type == 0 then
			doPlayerSendCancel(cid, "It is empty.")
		else
			doChangeTypeItem(item.uid, 0)
			splash = doCreateItem(2025, item.type, topos)
			doDecayItem(splash)
		end
	end
	return 1
end