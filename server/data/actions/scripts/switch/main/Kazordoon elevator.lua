function onUse(cid, item, frompos, item2, topos)
uppos = {x=32636, y=31881, z=2, stackpos=1}
up1pos = getThingfromPos(uppos)
downpos = {x=32636, y=31881, z=7, stackpos=1}
down1pos = getThingfromPos(downpos)

if item.itemid == 1945 then
	if isPlayer(cid) == TRUE then
	doTeleportThing(down1pos.uid, uppos)
	end
doSendMagicEffect(downpos, 2)
doSendMagicEffect(uppos, 2)
doTransformItem(item.uid,item.itemid+1)

elseif item.itemid == 1946 then
	if isPlayer(cid) == TRUE then
	doTeleportThing(up1pos.uid, downpos)
	end
doSendMagicEffect(downpos, 2)
doSendMagicEffect(uppos, 2)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end
  