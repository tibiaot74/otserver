--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)
	if item.uid==50109 then
		newpos = {x=32595, y=32745, z=7}
		doPlayerSetTown(cid, 8)
		doPlayerSendTextMessage(cid,22,"You have changed your residence to Port Hope.")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end