function onUse(cid, item, frompos, item2, topos)
if item.uid == 15051 then
  queststatus = getPlayerStorageValue(cid,15051)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a bunch of crap.")
   item_uid = doPlayerAddItem(cid,2143,1)
   item_uid = doPlayerAddItem(cid,2144,2)
   item_uid = doPlayerAddItem(cid,2129,1)
   item_uid = doPlayerAddItem(cid,2213,1)
   item_uid = doPlayerAddItem(cid,2148,100)
   item_uid = doPlayerAddItem(cid,2125,1)
   setPlayerStorageValue(cid,15051,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

