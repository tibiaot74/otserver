function onUse(cid, item, frompos, item2, topos)
gatepos = {x=32614, y=32206, z=10, stackpos=1}
getgate = getThingfromPos(gatepos)

barrilpos = {x=32614, y=32209, z=10, stackpos=1}
getbarril = getThingfromPos(barrilpos)

anelpos = {x=32613, y=32220, z=10, stackpos=1}
getanel = getThingfromPos(anelpos)

pedrapos = {x=32614, y=32221, z=10, stackpos=1}
getpedra = getThingfromPos(pedrapos)

fogopos = {x=32615, y=32221, z=10, stackpos=1}
getfogo = getThingfromPos(fogopos)

paredepos = {x=32603, y=32216, z=9, stackpos=1}
getparede = getThingfromPos(fogopos)

parede1pos = {x=32604, y=32216, z=9, stackpos=1}
getparede1 = getThingfromPos(fogopos)

barril = {x=32613, y=32220, z=10, stackpos=1} -- power ring

if item.uid == 15045 and item.itemid == 1945 and getgate.itemid == 1304 and getbarril.itemid == 1774 and getanel.itemid == 2166 then
doRemoveItem(getgate.uid,1)
doRemoveItem(getanel.uid,1)
doRemoveItem(getpedra.uid,1)
doCreateItem(1492,1,anelpos)
doCreateItem(1492,1,fogopos)
doCreateItem(1026,1,paredepos)
doCreateItem(1026,1,parede1pos)
addEvent(doCreateItem, (300*1000), 1304, 1, gatepos)
addEvent(doCreateItem, (300*1000), 1025, 1, pedrapos)
addEvent(
function()
doRemoveItem(getTileItemById(barrilpos, 1774).uid) end, 300* 1000)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 15045 and item.itemid == 1946 and getgate.itemid == 1304 then
doTransformItem(item.uid,item.itemid-1)
doPlayerSendCancel(cid, "Lever prepared for use.")
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
end