function onStepIn(cid, item, frompos, item2, topos)

AB = {x=32732, y=31634, z=7}
Kazordoon = {x=32649, y=31925, z=11}
Thais = {x=32369, y=32241, z=7}
Venore = {x=32957, y=32076, z=7}
Carlin = {x=32360, y=31782, z=7}
Ankrahmun = {x=33195, y=32853, z=8}
Darashia = {x=33213, y=32454, z=1}
PortHope = {x=32595, y=32745, z=7}
Edron = {x=33217, y=31814, z=8}
Svargrond = {x=32302, y=31186, z=7}
LibertyBay = {x=32317, y=32825, z=7}

	if item.actionid == 4001 then
		doPlayerSetTown(cid, 1)
		doTeleportThing(cid,AB)
		doSendMagicEffect(AB,12)
		
	elseif item.actionid == 4002 then
		doPlayerSetTown(cid, 2)
		doTeleportThing(cid,Kazordoon)
		doSendMagicEffect(Kazordoon,12)		
		
	elseif item.actionid == 4003 then
		doPlayerSetTown(cid, 3)
		doTeleportThing(cid,Thais)
		doSendMagicEffect(Thais,12)		
		
	elseif item.actionid == 4004 then
		doPlayerSetTown(cid, 4)
		doTeleportThing(cid,Venore)
		doSendMagicEffect(Venore,12)			
		
	elseif item.actionid == 4005 then
		doPlayerSetTown(cid, 5)
		doTeleportThing(cid,Carlin)
		doSendMagicEffect(Carlin,12)		
		
	elseif item.actionid == 4006 then
		doPlayerSetTown(cid, 6)
		doTeleportThing(cid,Ankrahmun)
		doSendMagicEffect(Ankrahmun,12)		
		
	elseif item.actionid == 4007 then
		doPlayerSetTown(cid, 7)
		doTeleportThing(cid,Darashia)
		doSendMagicEffect(Darashia,12)		
		
	elseif item.actionid == 4008 then
		doPlayerSetTown(cid, 8)
		doTeleportThing(cid,PortHope)
		doSendMagicEffect(PortHope,12)		
		
	elseif item.actionid == 4009 then
		doPlayerSetTown(cid, 9)
		doTeleportThing(cid,Edron)
		doSendMagicEffect(Edron,12)	
		
	elseif item.actionid == 4012 then
		doPlayerSetTown(cid, 13)
		doTeleportThing(cid,Svargrond)
		doSendMagicEffect(Svargrond,12)	
		
	--Teleports--
	elseif item.actionid == 4010 then
		DHQESCAPE = {x=33328, y=31592, z=14}
		doTeleportThing(cid,DHQESCAPE)
		doSendMagicEffect(DHQESCAPE,10)		
		
	elseif item.actionid == 4011 then
		THAISLIGHTHOUSE = {x=32225, y=32271, z=10}
		doTeleportThing(cid,THAISLIGHTHOUSE)
		doSendMagicEffect(THAISLIGHTHOUSE,10)					
		
	elseif item.actionid == 4013 then
		doPlayerSetTown(cid, 14)
		doTeleportThing(cid,LibertyBay)
		doSendMagicEffect(Svargrond,12)			

--POI--
	elseif item.actionid == 4014 then
		if getPlayerStorageValue(cid,10274) >= 1 and getPlayerStorageValue(cid,10275) >= 1 and getPlayerStorageValue(cid,10276) >= 1 and getPlayerStorageValue(cid,10277) >= 1 and getPlayerStorageValue(cid,10278) >= 1 and getPlayerStorageValue(cid,10280) >= 1 then
		doTeleportThing(cid,{x=32844, y=32199, z=12})
		doSendMagicEffect({x=32844, y=32199, z=12},10)	
		else
		doTeleportThing(cid,{x=32825, y=32243, z=12})
		doSendMagicEffect({x=32825, y=32243, z=12},15)
		doPlayerSendTextMessage(cid, 19, "You may not pass untill you have touched all thrones!")		
		end
		
		return 1
	end
end
