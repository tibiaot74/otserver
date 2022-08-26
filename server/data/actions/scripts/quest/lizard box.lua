function onUse(cid, item, frompos, item2, topos)
if item.uid == 25082 then
  queststatus = getPlayerStorageValue(cid,25082)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found some reward! go back to Mr Crackher if you want more missions!")
   item_uid = doPlayerAddItem(cid,2189,1)
   item_uid = doPlayerAddItem(cid,2491,1)
   
   setPlayerStorageValue(cid,25082,1)
   setPlayerStorageValue(cid,26004,1001)
      setPlayerStorageValue(cid,25075,10)
	  newpos = {x=32957, y=32836, z=8}
				doTeleportThing(cid,newpos)
  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

