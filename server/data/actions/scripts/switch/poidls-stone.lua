function onUse(cid, item, frompos, item2, topos)
gatepos = {x=32801, y=32336, z=11, stackpos=1}
getgate = getThingfromPos(gatepos)

oilpos = {x=32795, y=32337, z=11, stackpos=1}
oilgate = getThingfromPos(oilpos)

if item.uid == 25250 and item.itemid == 1945 and oilgate.itemid == 2025 then
doCreateItem(1284,1,gatepos)
doTransformItem(item.uid,item.itemid+1)
doRemoveItem(oilgate.uid,1)
elseif item.uid == 25250 and item.itemid == 1946 then
doPlayerSendCancel(cid,"Sorry not possible.")
else
doPlayerSendCancel(cid,"The lever is creaking and rusty.")
end
  return 1
  end