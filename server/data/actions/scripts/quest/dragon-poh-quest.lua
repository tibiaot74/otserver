-- dragon poh Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15078 then
  queststatus = getPlayerStorageValue(cid,15078)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a bunch of weird stuffs.")
   item_uid = doPlayerAddItem(cid,2524,1)
   item_uid = doPlayerAddItem(cid,2383,1)
   item_uid = doPlayerAddItem(cid,2201,1)
   item_uid = doPlayerAddItem(cid,2164,1)
   item_uid = doPlayerAddItem(cid,2169,1)
   item_uid = doPlayerAddItem(cid,2199,150)
   item_uid = doPlayerAddItem(cid,2152,5)
   setPlayerStorageValue(cid,15078,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

