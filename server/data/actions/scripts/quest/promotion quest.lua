function onUse(cid, item, frompos, item2, topos)
	if item.uid==25304 then
		newpos = {x=32316, y=32176, z=9}
		doPlayerSendTextMessage(cid,22,"You\'re now promoted, Congratulations!")
							doPlayerSetVocation(cid, getPlayerVocation(cid)+4)
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end