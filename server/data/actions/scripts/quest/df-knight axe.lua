function onUse(cid, item, frompos, item2, topos)
if item.uid == 2430 then
  queststatus = getPlayerStorageValue(cid,2430)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a knight axe.")
   item_uid = doPlayerAddItem(cid,2430,1)
   setPlayerStorageValue(cid,2430,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

