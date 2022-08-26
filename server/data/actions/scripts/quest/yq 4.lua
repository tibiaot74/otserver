function onUse(cid, item, frompos, item2, topos)
if item.uid == 25272 then
  queststatus = getPlayerStorageValue(cid,25268)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a wand of cosmic energy.")
   item_uid = doPlayerAddItem(cid,2189,1)  
   setPlayerStorageValue(cid,25268,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

