function onUse(cid, item, frompos, item2, topos)
if item.uid == 25016 then
  queststatus = getPlayerStorageValue(cid,25016)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found some usefull stuffs.")
   item_uid = doPlayerAddItem(cid,2120,1) 
    item_uid = doPlayerAddItem(cid,2050,1)   
    item_uid = doPlayerAddItem(cid,2667,4)  	
   setPlayerStorageValue(cid,25016,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

