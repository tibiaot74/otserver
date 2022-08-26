function onUse(cid, item, frompos, item2, topos)
	if item.uid==25292 then
		newpos = {x=32781, y=32305, z=9}
		doPlayerSendTextMessage(cid,22,"You have completed the last task of Soft Boots Quest!")
		   item_uid = doPlayerAddItem(cid,2640,1)
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end



function onUse(cid, item, frompos, item2, topos)
if item.uid == 25292 then
  queststatus = getPlayerStorageValue(cid,25292)
  		newpos = {x=32781, y=32305, z=9}
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
		doPlayerSendTextMessage(cid,22,"You have completed the last task of Soft Boots Quest!")
		   item_uid = doPlayerAddItem(cid,2640,1)
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12) 
   setPlayerStorageValue(cid,25292,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
   		doTeleportThing(cid,newpos)
  end
else
  return 0
end
return 1
end

