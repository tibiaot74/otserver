function onUse(cid, item, frompos, item2, topos)
if item.uid == 25038 then
  queststatus = getPlayerStorageValue(cid,25038)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"There was nothing on this letter, go back to Xaba!")
   setPlayerStorageValue(cid,25038,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

