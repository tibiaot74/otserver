-- Old city Quest Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15081 then
  queststatus = getPlayerStorageValue(cid,15081)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a Brass armor.")
   item_uid = doPlayerAddItem(cid,2465,1)
   item_uid = doPlayerAddItem(cid,2460,1)
   item_uid = doPlayerAddItem(cid,2388,1)
   item_uid = doPlayerAddItem(cid,2399,13)
   setPlayerStorageValue(cid,15081,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

