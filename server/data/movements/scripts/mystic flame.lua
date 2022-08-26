function onStepIn(cid, item, position, fromPosition)
if item.actionid == 299 then
if isPlayer(cid) == TRUE then
	if getPlayerStorageValue(cid,300) == 1 then
	
	elseif getPlayerStorageValue(cid,300) == 2 then
	setPlayerStorageValue(cid,300,1)
		if isPlayer(cid) == TRUE then
		container = doPlayerAddItem(cid, 1987, 1)
		doAddContainerItem(container, 2674, 10)	
			if getPlayerLevel(cid) == 7 then
			doPlayerAddExp(cid, 115)
			end
		end
	else
	end
end
end	
	return TRUE
end
