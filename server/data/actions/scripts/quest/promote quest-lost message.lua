function onUse(cid, item, frompos, item2, topos)
if item.uid == 26000 then
  queststatus = getPlayerStorageValue(cid,26000)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a lost message.")
   item_uid = doPlayerAddItem(cid,5802,1)
   setPlayerStorageValue(cid,26000,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

