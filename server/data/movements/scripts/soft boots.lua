
function onEquip(cid, item, slot)
	if getPlayerVocation(cid) == 1 then
	doTransformItem(item.uid, 2358)
	else
	doPlayerSendTextMessage(cid, 18, "Only premium players can use these boots!")
	doSendMagicEffect(getPlayerPosition(cid), 13)
	end
end