function onUse(cid, item, frompos, item2, topos)
if item.uid == 25004 then
  queststatus = getPlayerStorageValue(cid,25004)
  if queststatus == -1 or queststatus == 0 then
if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a new and nice equipment.")
   item_uid = doPlayerAddItem(cid,2457,1)
   item_uid = doPlayerAddItem(cid,2463,1)
   item_uid = doPlayerAddItem(cid,2647,1) 
   item_uid = doPlayerAddItem(cid,2525,1)   
   setPlayerStorageValue(cid,25004,1)
  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

