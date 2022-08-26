-- Fire axe Dragon Cave Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15041 then
  queststatus = getPlayerStorageValue(cid,15041)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found some great stuffs.")
   item_uid = doPlayerAddItem(cid,2534,1)
   item_uid = doPlayerAddItem(cid,2414,1)
   item_uid = doPlayerAddItem(cid,2144,3)
   setPlayerStorageValue(cid,15041,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

