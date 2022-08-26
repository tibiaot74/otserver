function onUse(cid, item, frompos, item2, topos)
if item.uid == 25109 then
  queststatus = getPlayerStorageValue(cid,25109)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 50 then
doPlayerSendTextMessage(cid,22,"You need 50 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a honey flower.")
   item_uid = doPlayerAddItem(cid,2103,1)  
   setPlayerStorageValue(cid,25109,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

