function onUse(cid, item, frompos, item2, topos)
		pos = getPlayerPosition(cid)
		doTeleportThing(cid,pos)
		
	if item.actionid > 0 and item.actionid == item2.actionid then
		match = 1
	else
		match = 0
	end
	if item2.itemid == 1209 or  
		item2.itemid == 1212 or
		item2.itemid == 1231 or
		item2.itemid == 1234 or
		item2.itemid == 1249 or
		item2.itemid == 1252 then
		
		if match == 1 then
		if pos.x == topos.x then
				if pos.y < topos.y then
				pos.y = topos.y + 0
				else
				pos.y = topos.y - 0
				end
			elseif pos.y == topos.y then
				if pos.x < topos.x then
				pos.x = topos.x + 0
				else
				pos.x = topos.x - 0
				end
		else
		doPlayerSendTextMessage(cid,22,'Please stand in front of the door.')
		return 1
		end
			doTransformItem(item2.uid,item2.itemid+2)
			doTeleportThing(cid,pos)
		else
			doPlayerSendCancel(cid,"The key does not match.")
		end
elseif item.actionid == 2001 then
doPlayerSendTextMessage(cid,22,"This key is number 3702")
elseif item.actionid == 2002 then
doPlayerSendTextMessage(cid,22,"This key is number 4055")
elseif item.actionid == 2003 then
doPlayerSendTextMessage(cid,22,"This key is number 3980")
elseif item.actionid == 2004 then
doPlayerSendTextMessage(cid,22,"This key is number 4601")
elseif item.actionid == 2005 then
doPlayerSendTextMessage(cid,22,"This key is number 5010")
elseif item.actionid == 2006 then
doPlayerSendTextMessage(cid,22,"This key is number 00")
	end

	return 1
	
end