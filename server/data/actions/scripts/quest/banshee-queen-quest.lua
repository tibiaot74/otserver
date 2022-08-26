-- Fire axe Dragon Cave Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15043 then
  queststatus = getPlayerStorageValue(cid,15043)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found loot of Banshee Quest.")
   item_uid = doPlayerAddItem(cid,2195,1)
   item_uid = doPlayerAddItem(cid,2393,1)
   item_uid = doPlayerAddItem(cid,2528,1)
   item_uid = doPlayerAddItem(cid,2165,1)
   item_uid = doPlayerAddItem(cid,2197,10)
   item_uid = doPlayerAddItem(cid,2152,100)
   setPlayerStorageValue(cid,15043,1)


  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

