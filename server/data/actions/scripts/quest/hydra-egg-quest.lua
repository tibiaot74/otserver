-- Hydra Egg Quest Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15089 then
  queststatus = getPlayerStorageValue(cid,15089)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 50 then
doPlayerSendTextMessage(cid,22,"You need 50 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a hydra egg.")
   item_uid = doPlayerAddItem(cid,4850,1)
   setPlayerStorageValue(cid,15089,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

