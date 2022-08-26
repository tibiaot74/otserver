function onUse(cid, item, frompos, item2, topos)
if item.uid == 25077 then
  queststatus = getPlayerStorageValue(cid,25077)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a new and nice equipment.")
   item_uid = doPlayerAddItem(cid,2475,1)
   item_uid = doPlayerAddItem(cid,2476,1) 
   item_uid = doPlayerAddItem(cid,2477,1)    
   setPlayerStorageValue(cid,25077,1)
   setPlayerStorageValue(cid,25075,4)
     setPlayerStorageValue(cid,26001,2001)
	 
  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

