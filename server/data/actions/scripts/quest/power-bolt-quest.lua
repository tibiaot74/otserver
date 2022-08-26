-- Fire axe Dragon Cave Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15066 then
  queststatus = getPlayerStorageValue(cid,15066)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a some crap.")
   item_uid = doPlayerAddItem(cid,2377,1)
   item_uid = doPlayerAddItem(cid,2547,5)
   item_uid = doPlayerAddItem(cid,2546,12)
   item_uid = doPlayerAddItem(cid,2217,1)
   setPlayerStorageValue(cid,15066,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

