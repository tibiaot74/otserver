function onUse(cid, item, frompos, item2, topos)
if item.uid == 25283 then
  queststatus = getPlayerStorageValue(cid,25283)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found some loot.")
   item_uid = doPlayerAddItem(cid,2456,1)
      item_uid = doPlayerAddItem(cid,2545,5)
	        item_uid = doPlayerAddItem(cid,2006,7)
	  
   setPlayerStorageValue(cid,25283,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

