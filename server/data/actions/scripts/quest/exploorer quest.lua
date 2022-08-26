function onUse(cid, item, frompos, item2, topos)
if item.uid == 15174 then
  queststatus = getPlayerStorageValue(cid,15174)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have completed The Exploorer Quest!.")
   item_uid = doPlayerAddItem(cid,2365,1)
   item_uid = doPlayerAddItem(cid,6132,1)
   item_uid = doPlayerAddItem(cid,2173,1)
   item_uid = doPlayerAddItem(cid,2361,1)
   item_uid = doPlayerAddItem(cid,2183,7)
   setPlayerStorageValue(cid,15174,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

