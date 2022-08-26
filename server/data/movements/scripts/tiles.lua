function onStepIn(cid, item, frompos, item2, topos)

newpos1 = {x=32091, y=32177, z=7}
newpos2 = {x=32060, y=32192, z=7}
tilepos1 = {x=33091, y=32175, z=6}
tilepos2 = {x=32092, y=32175, z=6}



if item.uid == 1201 then
	if isPlayer(cid) == TRUE then
		if getPlayerLevel(cid) > 1 then

		else
		doTeleportThing(cid,newpos1)
		doPlayerSendTextMessage(cid,22,"You cannot leave Rook Town until you\'re level 2 or above!")
		doSendMagicEffect(newpos1,12)
		end
	end	
elseif item.uid == 1202 then
	if isPlayer(cid) == TRUE then
		if getPlayerLevel(cid) > 1 then

		else
		doTeleportThing(cid,newpos2)
		doPlayerSendTextMessage(cid,22,"You cannot leave Rook Town until you\'re level 2 or above!")
		doSendMagicEffect(newpos1,12)
		end
	end
	
	return 0
end
return 1
end