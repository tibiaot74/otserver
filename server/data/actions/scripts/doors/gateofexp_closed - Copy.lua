-- ActionIDs:
-- 1001~1999: Level doors(level is actionID-1000)
-- 2001~2008: Vocation doors(voc is ActionID-2000. 1:Sorcerer, 2:Druid, 3:Paladin, 4:Knight, 5:MS, 6:ED, 7:RP, 8:EK)

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

	if(isVocationDoor) then
		local doorVoc = item.actionid-2000
		if (doorVoc == 1 and not(isSorcerer(cid))) or
		   (doorVoc == 2 and not(isDruid(cid)))    or
		   (doorVoc == 3 and not(isPaladin(cid)))  or
		   (doorVoc == 4 and not(isKnight(cid)))   or
		   (doorVoc ~= getPlayerVocation(cid))     then
			canEnter = false
		end
	end



	local canGo = (queryTileAddThing(cid, frompos, bit.bor(2, 4)) == RETURNVALUE_NOERROR) --Veryfies if the player can go, ignoring blocking things
	if not(canGo) then
		return FALSE
	end
	
	return TRUE
end
