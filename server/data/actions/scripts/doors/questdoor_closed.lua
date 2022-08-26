-- Player with storage value of the item's actionid set to 1 can open

function onUse(cid, item, frompos, item2, topos)


	if item.actionid == 6681 and getPlayerStorageValue(cid, 250) >= 45 then
		doTransformItem(item.uid, item.itemid+1)
		topos = {x=topos.x, y=topos.y, z=topos.z}
		doTeleportThing(cid,topos)		
	else
		doPlayerSendTextMessage(cid,22,'The door is sealed against unwanted intruders.')
	end

	return TRUE
end

