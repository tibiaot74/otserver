function onUse(cid, item, frompos, item2, topos)
if item.uid == 25251 then
  queststatus = getPlayerStorageValue(cid,25251)
  if queststatus == -1 or queststatus == 0 then
if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
container = doPlayerAddItem(cid, 1987, 1)
doAddContainerItem(container, 2214, 1)
doAddContainerItem(container, 2200, 250)
setPlayerStorageValue(cid,25251,1)
  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end
