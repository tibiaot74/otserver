function onStepIn(cid, item, pos, topos)
island = {x=32224, y=32247, z=7}
rook = {x=32192, y=32182, z=7}
if isPlayer(cid) == TRUE then
	if getPlayerVocation(cid) == 9 then
		if item.uid == 1001 then
		doTeleportThing(cid, island)
		doSendMagicEffect(island, 10)
		elseif item.uid == 1002 then
		doTeleportThing(cid, rook)
		doSendMagicEffect(rook, 10)
		end
	else
	doPlayerSendTextMessage(cid,19,"GET AWAY FROM THAT BOAT!")
	end
end
end
