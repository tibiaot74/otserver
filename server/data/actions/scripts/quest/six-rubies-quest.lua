-- Fire axe Dragon Cave Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15052 then
  queststatus = getPlayerStorageValue(cid,15052)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 10 then
doPlayerSendTextMessage(cid,22,"You need 10 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a six small rubies.")
   item_uid = doPlayerAddItem(cid,2147,6)
   setPlayerStorageValue(cid,15052,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

