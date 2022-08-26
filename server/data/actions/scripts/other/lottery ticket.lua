function onUse(cid, item, frompos, item2, topos)
if item.id == 2345 then
  queststatus = getPlayerStorageValue(cid,60010)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have summoned a lottery monster! Kill it!")
   spawnpos = getPlayerPosition(cid)
   doSummonCreature("lottery monster", spawnpos)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end



local poweritem = 2345
local rate = 5

function onUse(cid, item)
            if doPlayerRemoveItem(cid, poweritem, 1) == 1 then            
   spawnpos = getPlayerPosition(cid)
   doSummonCreature("lottery monster", spawnpos)
						doPlayerSendTextMessage(cid,22,"You have summoned a lottery monster! Kill it!")
end
return TRUE
end  