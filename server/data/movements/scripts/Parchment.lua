function onAddItem(moveitem, tileitem, position)
  if moveitem.itemid == 1951 then
    doRemoveItem(moveitem.uid)
    parchment = {x=33063, y=31624, z=15}
    demon1pos = {x=33060, y=31623, z=15}
    demon2pos = {x=33066, y=31623, z=15}
    demon3pos = {x=33060, y=31627, z=15}
    demon4pos = {x=33066, y=31627, z=15}
    doSummonCreature("Demon", demon1pos)
    doSummonCreature("Demon", demon2pos)
    doSummonCreature("Demon", demon3pos)
    doSummonCreature("Demon", demon4pos)
    addEvent(doCreateItem,60000,1951,1,parchment)
	end
	return TRUE
end