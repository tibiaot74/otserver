function onUse(cid, item, frompos, item2, topos)
	if(item.actionid == 0) then
		-- Make it a normal door
		doTransformItem(item.uid, item.itemid+1)
		return TRUE
	end

	local canEnter = (getPlayerStorageValue(cid, item.actionid) == 1)
	if item.actionid ~= 42357 then
		if (item.actionid == 42366 and getPlayerStorageValue(cid,42355) >= 1) or (item.actionid == 42376 and getPlayerStorageValue(cid,42355) >= 2) or (item.actionid == 42386 and getPlayerStorageValue(cid,42355) == 3) then
		doTransformItem(item.uid, item.itemid+1)
		topos = {x=topos.x, y=topos.y, z=topos.z}
		doTeleportThing(cid,topos)
		else
			doPlayerSendTextMessage(cid, 19, "You're not allowed to enter this room yet!")
			return TRUE
		end
		
	elseif (item.actionid == 42357 and getPlayerStorageValue(cid,42351) == 1) then
		doTransformItem(item.uid, item.itemid+1)
		topos = {x=topos.x, y=topos.y, z=topos.z}
		doTeleportThing(cid,topos)	
	else
	doPlayerSendTextMessage(cid, 19, "You must pay before you can face the arena!")
	end

	local canGo = (queryTileAddThing(cid, frompos, bit.bor(2, 4)) == RETURNVALUE_NOERROR) --Veryfies if the player can go, ignoring blocking things
	if not(canGo) then
		return FALSE
	end
	return TRUE
end
