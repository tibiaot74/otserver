function onUse(cid, item, frompos, item2, topos)
if item.uid == 25302 then
  queststatus = getPlayerStorageValue(cid,25302)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 250 then
doPlayerSendTextMessage(cid,22,"You need 250 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a some awesome stuffs!")
   item_uid = doPlayerAddItem(cid,2195,1)
      item_uid = doPlayerAddItem(cid,2393,1)
   item_uid = doPlayerAddItem(cid,2165,1)
   item_uid = doPlayerAddItem(cid,2160,1) 
   item_uid = doPlayerAddItem(cid,2197,1)  
   item_uid = doPlayerAddItem(cid,2656,1)
   item_uid = doPlayerAddItem(cid,2436,1)   
   setPlayerStorageValue(cid,25302,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

