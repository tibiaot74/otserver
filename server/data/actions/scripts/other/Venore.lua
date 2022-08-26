--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)
	if item.uid==50105 then
		newpos = {x=32957, y=32076, z=7}
		doPlayerSetTown(cid, 4)
		doPlayerSendTextMessage(cid,22,"You have changed your residence to Venore.")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end