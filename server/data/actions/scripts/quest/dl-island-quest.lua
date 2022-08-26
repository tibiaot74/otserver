-- Fire axe Dragon Cave Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15151 then
  queststatus = getPlayerStorageValue(cid,15151)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found the lost loot of Thony Deriver.")
   item_uid = doPlayerAddItem(cid,3940,1)
   item_uid = doPlayerAddItem(cid,2492,1)
   item_uid = doPlayerAddItem(cid,2392,1)
   item_uid = doPlayerAddItem(cid,2414,7)
   item_uid = doPlayerAddItem(cid,2528,7)
   setPlayerStorageValue(cid,15151,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

