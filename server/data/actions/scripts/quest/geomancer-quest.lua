-- geomancer-quest Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15098 then
  queststatus = getPlayerStorageValue(cid,15098)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found dwarven ring, small diamond and a small sapphire.")
   item_uid = doPlayerAddItem(cid,2213,1)
   item_uid = doPlayerAddItem(cid,2145,1)
   item_uid = doPlayerAddItem(cid,2146,1)
   setPlayerStorageValue(cid,15098,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

