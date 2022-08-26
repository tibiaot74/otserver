function onUse(cid, item, frompos, item2, topos)

posoftp = {x=32262, y=31889, z=10}
tpto = {x=32259, y=31892, z=10}
 
magwallpos2 = {x=32259, y=31891, z=10}

if item.itemid == 1945 then
doRemoveItem(getTileItemById(magwallpos2, 1498).uid,1) 
doTransformItem(item.uid,item.itemid+1)

elseif item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end
  