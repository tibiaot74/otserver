function onUse(cid, item, frompos, item2, topos)
if item.uid == 25284 then
  queststatus = getPlayerStorageValue(cid,25285)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have now access to Deeper Fibula!")
   setPlayerStorageValue(cid,25285,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

