function onUse(cid, item, frompos, item2, topos)
	local isLevelDoor = (item.actionid >= 1001 and item.actionid <= 1999)
	local isVocationDoor = (item.actionid >= 2001 and item.actionid <= 2008)

if getPlayerLevel(cid) >= item.actionid-1000 then
	doTransformItem(item.uid, item.itemid+1)
	topos = {x=topos.x, y=topos.y, z=topos.z}
	doTeleportThing(cid,topos)
	else
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Only the worthy may pass.")
	end


	
	return TRUE
end
