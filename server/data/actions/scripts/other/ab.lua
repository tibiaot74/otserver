--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)
	if item.uid==50103 then
		newpos = {x=32732, y=31634, z=7}
		doPlayerSetTown(cid, 1)
		doPlayerSendTextMessage(cid,22,"You have changed your residence to Ab/'Dendriel")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end