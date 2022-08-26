function onUse(cid, item, frompos, item2, topos)
gatepos = {x=32910, y=32196, z=15, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.actionid == 51941 and item.itemid == 1945 then
doCreateItem(598,1,gatepos)
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.actionid == 51941 and item.itemid == 1946 then
doCreateItem(407,1,gatepos)
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end