function onUse(cid, item, frompos, item2, topos)
	if item.uid==8501 then
	if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
		newpos = {x=33122, y=32656, z=7}
		doPlayerSendTextMessage(cid,22,"You have now access to enter Green Djinn Tower.")
   setPlayerStorageValue(cid,8501,1)
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end