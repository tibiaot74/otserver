function onUse(cid, item, frompos, item2, topos)
corpse1 = {x=1560, y=953, z=11, stackpos=1}
corpse1 = getThingfromPos(corpse1)

bohpos1 = {x=1523, y=892, z=7, stackpos=1}
bohpos2 = {x=1541, y=973, z=10, stackpos=1}

if item.uid == 25020 and item.itemid == 1945 and corpse1.itemid == 2881 then
doRemoveItem(corpse1.uid,1)
  doRemoveItem(2195,1,bohpos1)
  doCreateItem(2195,1,bohpos2)
   setPlayerStorageValue(cid,25022,1)
doTransformItem(item.uid,item.itemid+1)

elseif item.uid == 25020 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Where is the dragon lord corpse?")
end
  return 1
  end