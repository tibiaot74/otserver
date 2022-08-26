function onUse(cid, item, frompos, item2, topos)
if item.uid == 25028 then
  queststatus = getPlayerStorageValue(cid,25028)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
   		newpos = {x=915, y=992, z=6}
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
container = doPlayerAddItem(cid, 1987, 1)
doAddContainerItem(container, 2466, 1)
doAddContainerItem(container, 2393, 1)
doAddContainerItem(container, 2171, 1)
   setPlayerStorageValue(cid,25028,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

