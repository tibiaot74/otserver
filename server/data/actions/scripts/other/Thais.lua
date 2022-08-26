--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)
	if item.uid==50101 then
		newpos = {x=32369, y=32241, z=7}
		doPlayerSetTown(cid, 3)
		doPlayerSendTextMessage(cid,22,"You have changed your residence to Thais")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end