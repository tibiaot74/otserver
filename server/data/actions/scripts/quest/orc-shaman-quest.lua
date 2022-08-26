-- Orc Shaman Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15079 then
  queststatus = getPlayerStorageValue(cid,15079)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a magic light wand.")
   item_uid = doPlayerAddItem(cid,2162,1)
   item_uid = doPlayerAddItem(cid,2208,1)
   item_uid = doPlayerAddItem(cid,2260,1)
   setPlayerStorageValue(cid,15079,1)


  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

