function onUse(cid, item, frompos, item2, topos)
gatepos = {x=33295, y=31677, z=15, stackpos=1}
gatepos2 = {x=33296, y=31677, z=15, stackpos=1}
gatepos3 = {x=33297, y=31677, z=15, stackpos=1}
gatepos4 = {x=33298, y=31677, z=15, stackpos=1}
gatepos5 = {x=33299, y=31677, z=15, stackpos=1}
getgate = getThingfromPos(gatepos)
getgate2 = getThingfromPos(gatepos2)
getgate3 = getThingfromPos(gatepos3)
getgate4 = getThingfromPos(gatepos4)
getgate5 = getThingfromPos(gatepos5)

if item.uid == 25281 and item.itemid == 1945 then
doRemoveItem(getgate.uid,1)
doRemoveItem(getgate2.uid,1)
doRemoveItem(getgate3.uid,1)
doRemoveItem(getgate4.uid,1)
doRemoveItem(getgate5.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 25281 and item.itemid == 1946 then
doCreateItem(1304,1,gatepos)
doCreateItem(1304,1,gatepos2)
doCreateItem(1304,1,gatepos3)
doCreateItem(1304,1,gatepos4)
doCreateItem(1304,1,gatepos5)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end