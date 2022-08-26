function onUse(cid, item, frompos, item2, topos)
if item.uid == 25101 then
  queststatus = getPlayerStorageValue(cid,25101)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"MWAHAHAHAHA!")
   item_uid = doPlayerAddItem(cid,2646,1)
   setPlayerStorageValue(cid,25101,1)
			demon1pos = {x=33067, y=31621, z=15}
			demon2pos = {x=33069, y=31627, z=15}
			demon3pos = {x=33056, y=31629, z=15}
			demon4pos = {x=33054, y=31620, z=15}
			demon5pos = {x=33054, y=31622, z=15}
			demon6pos = {x=33055, y=31621, z=15}
			demon7pos = {x=33055, y=31620, z=15}
			demon8pos = {x=33055, y=31622, z=15}
   doSummonCreature("Demon", demon1pos)
   doSummonCreature("Demon", demon2pos)
   doSummonCreature("Demon", demon3pos)
   doSummonCreature("Demon", demon4pos)
   doSummonCreature("Demon", demon5pos)
   doSummonCreature("Demon", demon6pos)
   doSummonCreature("Demon", demon7pos)
   doSummonCreature("Demon", demon8pos)   
  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

