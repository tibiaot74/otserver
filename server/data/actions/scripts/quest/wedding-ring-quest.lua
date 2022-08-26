-- Wedding ring Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15087 then
  queststatus = getPlayerStorageValue(cid,15087)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a Wedding ring.")
   item_uid = doPlayerAddItem(cid,2121,1)
   item_uid = doPlayerAddItem(cid,2397,1)
   item_uid = doPlayerAddItem(cid,2560,1)
   item_uid = doPlayerAddItem(cid,2260,3)
   item_uid = doPlayerAddItem(cid,2108,1)
   item_uid = doPlayerAddItem(cid,2148,76)
   setPlayerStorageValue(cid,15087,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

