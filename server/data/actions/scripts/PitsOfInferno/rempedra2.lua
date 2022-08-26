function onUse(cid, item, frompos, item2, topos)
gatepos = {x=32849, y=32282, z=10, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.actionid == 51932 and item.itemid == 1945 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.actionid == 51932 and item.itemid == 1946 then
doCreateItem(1304,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end