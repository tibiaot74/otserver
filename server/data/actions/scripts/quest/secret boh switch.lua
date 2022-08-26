function onUse(cid, item, frompos, item2, topos)
bohpos = {x=1541, y=973, z=10, stackpos=1}
getbohpos = getThingfromPos(bohpos)



if item.uid == 25021 and item.itemid == 1945 and getbohpos.itemid == 2195 then
doRemoveItem(getbohpos.uid,1)
   setPlayerStorageValue(cid,25023,1)
doTransformItem(item.uid,item.itemid+1)

elseif item.uid == 25021 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Where is the boots of haste?")
end
  return 1
  end