function onUse(cid, item, frompos, item2, topos)
if item.uid == 25037 then
  queststatus = getPlayerStorageValue(cid,25037)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found Reytons old backpack! bring it back to him!")
   item_uid = doPlayerAddItem(cid,3960,1)  
   setPlayerStorageValue(cid,25037,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

