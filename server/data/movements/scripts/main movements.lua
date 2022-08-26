function onStepIn(cid, item, position, fromPosition)

if item.uid == 9001 then
MINTWALLINSEWERPOS = {x=32482, y=32170, z=14, stackpos=0}
doCreateItem(383, 1, MINTWALLINSEWERPOS)

elseif item.uid == 9002 then
DRACONIAWALL1 = {x=32796, y=31595, z=5, stackpos=1}
WALLPOS1 = getThingfromPos(DRACONIAWALL1)
doRemoveItem(WALLPOS1.uid, 1)

elseif item.uid == 9003 then
DRACONIAWALL1 = {x=32795, y=31578, z=5, stackpos=1}
WALLPOS1 = getThingfromPos(DRACONIAWALL1)
doRemoveItem(WALLPOS1.uid, 1)

elseif item.uid == 9004 then
switchpos1 = {x=32802, y=31584, z=1, stackpos=1}
getswitch1 = getThingfromPos(switchpos1)
switchpos2 = {x=32803, y=31584, z=1, stackpos=1}
getswitch2 = getThingfromPos(switchpos2)
switchpos3 = {x=32804, y=31584, z=1, stackpos=1}
getswitch3 = getThingfromPos(switchpos3)
switchpos4 = {x=32805, y=31584, z=1, stackpos=1}
getswitch4 = getThingfromPos(switchpos4)
if getswitch1.itemid == 1945 and getswitch2.itemid == 1946 and getswitch3.itemid == 1945 and getswitch4.itemid == 1946 then
EXITPOS = {x=32701, y=31639, z=6}
else
EXITPOS = {x=32803, y=31587, z=1}
end
doTeleportThing(cid, EXITPOS)
doSendMagicEffect(EXITPOS, 10)

elseif item.uid == 9005 then
	if getPlayerLevel(cid) >= 80 and getPlayerItemCount(cid,1970) > 0 then
	POIDLNEWSPOT = {x=32791, y=32327, z=10}
	else
	POIDLNEWSPOT = fromPosition
	end
doTeleportThing(cid,POIDLNEWSPOT)
doSendMagicEffect(POIDLNEWSPOT,12)
		
elseif item.uid == 9006 then
POIDLNEWSPOT = {x=32791, y=32331, z=10}
doTeleportThing(cid,POIDLNEWSPOT)
doSendMagicEffect(POIDLNEWSPOT,12)

elseif item.uid == 9007 then
NEWPOS = {x=33195, y=32852, z=4}
doTeleportThing(cid,NEWPOS)
doSendMagicEffect(NEWPOS,12)
elseif item.uid == 9008 then
NEWPOS = {x=33191, y=32845, z=8}
doTeleportThing(cid,NEWPOS)
doSendMagicEffect(NEWPOS,12)

elseif item.uid == 9009 then --Frozen Trench (Underwater Quara area entrance)
NEWPOS = {x=32458, y=31427, z=11}
doTeleportThing(cid,NEWPOS)
doSendMagicEffect(NEWPOS,10)
end
return TRUE
end

function onStepOut(cid, item, position, fromPosition)


if item.uid == 9001 then
MINTWALLINSEWERPOS = {x=32482, y=32170, z=14, stackpos=0}
GETPOS = getThingfromPos(MINTWALLINSEWERPOS)
doTransformItem(GETPOS.uid, 351, 1)

elseif item.uid == 9002 then
DRACONIAWALL1 = {x=32796, y=31595, z=5, stackpos=1}
DRACONIAWALLDUMP1 = {x=32797, y=31595, z=5}
WALLPOS1 = getThingfromPos(DRACONIAWALL1)
doRelocate(DRACONIAWALL1, DRACONIAWALLDUMP1)
doCreateItem(1025, 1, DRACONIAWALL1)

elseif item.uid == 9003 then
DRACONIAWALL1 = {x=32795, y=31578, z=5, stackpos=1}
DRACONIAWALLDUMP1 = {x=32795, y=31579, z=5}
WALLPOS1 = getThingfromPos(DRACONIAWALL1)
doRelocate(DRACONIAWALL1, DRACONIAWALLDUMP1)
doCreateItem(1025, 1, DRACONIAWALL1)

end
return TRUE
end
