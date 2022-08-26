-- Iron Helmet in Poh Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15088 then
  queststatus = getPlayerStorageValue(cid,15088)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a Iron Helmet.")
   item_uid = doPlayerAddItem(cid,2459,1)
   item_uid = doPlayerAddItem(cid,2268,2)
   item_uid = doPlayerAddItem(cid,2467,1)
   item_uid = doPlayerAddItem(cid,2238,1)
   item_uid = doPlayerAddItem(cid,2397,1)
   setPlayerStorageValue(cid,15088,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

