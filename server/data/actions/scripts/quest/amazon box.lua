function onUse(cid, item, frompos, item2, topos)
if item.uid == 25086 then
  queststatus = getPlayerStorageValue(cid,25086)
  if queststatus == -1 or queststatus == 0 then
if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a letter, bring it back to Alph!")
   item_uid = doPlayerAddItem(cid,2598,1)
   
   setPlayerStorageValue(cid,25086,1)
   setPlayerStorageValue(cid,26006,600)
      setPlayerStorageValue(cid,25064,3)
	  newpos = {x=32866, y=31920, z=8}
				doTeleportThing(cid,newpos)
  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

