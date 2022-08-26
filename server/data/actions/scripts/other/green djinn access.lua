function onUse(cid, item, frompos, item2, topos)

if item.uid == 4014 then
	if item.itemid == 1209 or item.itemid == 1210 or item.itemid == 1212 or item.itemid == 1213 or item.itemid == 1219 or item.itemid == 1221 or item.itemid == 1223 or item.itemid == 1225 or item.itemid == 1227 or item.itemid == 1229 or item.itemid == 1231 or item.itemid == 1232 or item.itemid == 1234 or item.itemid == 1235 or item.itemid == 1237 or item.itemid == 1339 or item.itemid == 1241 or item.itemid == 1243 or item.itemid == 1245 or item.itemid == 1247 or item.itemid == 1249 or item.itemid == 1250 or item.itemid == 1252 or item.itemid == 1253 or item.itemid == 1255 or item.itemid == 1257 or item.itemid == 1259 or item.itemid == 1261 then
if getPlayerStorageValue(cid, 4014) == 1 then
		pos = getPlayerPosition(cid)

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
		doTransformItem(item.uid, item.itemid+1)
		doTeleportThing(cid,pos)
		else
		doPlayerSendTextMessage(cid,22,'Only the worthy may pass!')
		end
	else
		doPlayerSendTextMessage(cid,22,'Sorry, not possible.')
		end	
return 1
else
return 0
end
end