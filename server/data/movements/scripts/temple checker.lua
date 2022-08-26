function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) == TRUE then
	if item.actionid == 301 then
	setPlayerStorageValue(cid,300,2)

	elseif item.actionid == 302 then
	setPlayerStorageValue(cid,300,1)

	end
end
	return TRUE
end
