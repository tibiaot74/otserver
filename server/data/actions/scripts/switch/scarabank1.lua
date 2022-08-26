function onUse(cid, item, frompos, item2, topos)
gatepos = {x=33211, y=32698, z=13, stackpos=1}
getgate = getThingfromPos(gatepos)
wall = getTileItemById(gatepos, 1061)
   
if item.actionid == 9998 and wall.itemid > 0 then
doRemoveItem(getgate.uid,1)

elseif item.actionid == 9998 then
doCreateItem(1061,1,gatepos)

else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end