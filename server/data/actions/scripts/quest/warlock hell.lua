function onUse(cid, item, frompos, item2, topos)
if item.uid == 25001 then
  queststatus = getPlayerStorageValue(cid,25001)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a par boots of haste and a pair crown legs.")
   item_uid = doPlayerAddItem(cid,2195,1)
   item_uid = doPlayerAddItem(cid,2488,1)
   setPlayerStorageValue(cid,25001,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

