function onUse(cid, item, frompos, item2, topos)
gatepos = {x=32853, y=31964, z=8, stackpos=1}
getgate = getThingfromPos(gatepos)
  
if item.uid == 25305 and item.itemid == 1945 and getgate.itemid == 2931 then
doRemoveItem(getgate.uid,1)
setPlayerStorageValue(cid,25305,1)
doPlayerSendCancel(cid,"You have now access to sand dragon caves!")
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 25305 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"You need to pay the corpse!")
end
  return 1
  end