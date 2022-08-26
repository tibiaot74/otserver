-- Fire axe Dragon Cave Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15085 then
  queststatus = getPlayerStorageValue(cid,15085)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a Blue robe, medusa shield and a skull staff.")
   item_uid = doPlayerAddItem(cid,2656,1)
   item_uid = doPlayerAddItem(cid,2536,1)
   item_uid = doPlayerAddItem(cid,2436,1)
   setPlayerStorageValue(cid,15085,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

