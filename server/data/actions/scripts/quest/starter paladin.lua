function onUse(cid, item, frompos, item2, topos)
if item.uid == 25015 then
  queststatus = getPlayerStorageValue(cid,25015)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found 10 spears.")
   item_uid = doPlayerAddItem(cid,2389,10) 
   setPlayerStorageValue(cid,25015,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

