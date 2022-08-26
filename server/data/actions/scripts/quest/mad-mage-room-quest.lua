-- Fire axe Dragon Cave Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15086 then
  queststatus = getPlayerStorageValue(cid,15086)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a hat of mad.")
   item_uid = doPlayerAddItem(cid,2323,1)
   item_uid = doPlayerAddItem(cid,2006,7)
   item_uid = doPlayerAddItem(cid,2197,10)
   item_uid = doPlayerAddItem(cid,2131,1)
   item_uid = doPlayerAddItem(cid,2402,1)
   setPlayerStorageValue(cid,15086,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

