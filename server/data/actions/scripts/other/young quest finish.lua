function onUse(cid, item, frompos, item2, topos)
	if item.uid==25267 then
		newpos = {x=32384, y=32155, z=11}
		doPlayerSendTextMessage(cid,22,"The door seems to be blocked!")
		doTeleportThing(cid,newpos)
		return 1
	end
end