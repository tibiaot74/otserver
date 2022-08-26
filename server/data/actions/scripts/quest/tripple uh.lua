function onUse(cid, item, frompos, item2, topos)
if item.uid == 2273 then
  queststatus = getPlayerStorageValue(cid,2273)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a Ultimate healing rune with 3 charges.")
   item_uid = doPlayerAddItem(cid,2273,3)  
   setPlayerStorageValue(cid,2273,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

