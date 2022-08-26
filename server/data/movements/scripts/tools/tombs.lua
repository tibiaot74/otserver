function onAddItem(moveitem, tileitem, pos)
if tileitem.actionid == 5000 then 
	local coins = {--[CoalBasin AID] = {frompos = [mystic_flame_pos], topos = [Where teleport player(and items below him)]}
			[1001] = {frompos = {x= 33073,y= 32590,z = 13}, topos = {x= 33080,y= 32588,z = 13}},
			[1002] = {frompos = {x= 33097,y= 32816,z = 13}, topos = {x= 33093,y= 32824,z = 13}},
			[1003] = {frompos = {x= 33135,y= 32683,z = 12}, topos = {x= 33130,y= 32683,z = 12}},
			[1004] = {frompos = {x= 33162,y= 32831,z = 10}, topos = {x= 33156,y= 32832,z = 10}},
			[1005] = {frompos = {x= 33234,y= 32692,z = 13}, topos = {x= 33234,y= 32687,z = 13}},
			[1006] = {frompos = {x= 33240,y= 32856,z = 13}, topos = {x= 33246,y= 32850,z = 13}},
			[1007] = {frompos = {x= 33276,y= 32553,z = 14}, topos = {x= 33271,y= 32553,z = 14}},
			[1008] = {frompos = {x= 33293,y= 32742,z = 13}, topos = {x= 33299,y= 32742,z = 13}},
			[1009] = {frompos = {x= 33276,y= 32553,z = 14}, topos = {x= 33271,y= 32553,z = 14}},
			[1010] = {frompos = {x= 33276,y= 32553,z = 14}, topos = {x= 33271,y= 32553,z = 14}}
			}
    if moveitem.itemid == 2159 and tileitem.uid ~= 1009 then 
		doRemoveItem(moveitem.uid, 1)
		doSendMagicEffect(pos, 15)
		doSendMagicEffect(coins[tileitem.uid].frompos, 10)
		doSendMagicEffect(coins[tileitem.uid].topos, 10)
        doRelocate(coins[tileitem.uid].frompos,coins[tileitem.uid].topos)
		
	elseif moveitem.itemid == 5948 and tileitem.uid == 1009 then 
		doRemoveItem(moveitem.uid, 1)
		charpos = getThingfromPos({x= 32716,y= 32351,z = 7,stackpos = 253})
		if isPlayer(charpos.uid) == TRUE then
		doTeleportThing(charpos.uid, {x= 32716,y= 32352,z = 12})
		end
		doSendMagicEffect({x= 32716,y= 32350,z = 7}, 15)
		doSendMagicEffect({x= 32716,y= 32350,z = 12}, 15)
		doSendMagicEffect({x= 32716,y= 32351,z = 7}, 10)
		doSendMagicEffect({x= 32716,y= 32352,z = 12}, 10)
    end
    return TRUE
end
end 

function onStepIn(cid, item, position, fromPosition)
if item.actionid == 5001  and item.uid ~= 1009 and isPlayer(cid) == TRUE then 
local back_n = {--[AID_of_mystic_flame_to_back(right one on png)] = Pos_To_TP. (red arrow)
		[1001] = {x=33072,y=32590,z=13},
		[1002] = {x=33097,y=32815,z=13},
		[1003] = {x=33136,y=32683,z=12},
		[1004] = {x=33162,y=32832,z=10},
		[1005] = {x=33234,y=32693,z=13},
		[1006] = {x=33239,y=32856,z=13},
		[1007] = {x=33277,y=32553,z=14},
		[1008] = {x=33292,y=32742,z=13},
		[1010] = {x=33277,y=32553,z=14},
		[1011] = {x= 33277,y= 32553,z = 14}
		}
	doSendMagicEffect(position, 10)
	doRelocate(position,back_n[item.uid])
	doSendMagicEffect(back_n[item.uid], 10)
	
elseif item.actionid == 5001 and item.uid == 1009 and isPlayer(cid) == TRUE then 
doTeleportThing(cid, {x= 32716,y= 32352,z = 7})
doSendMagicEffect({x= 32716,y= 32352,z = 7}, 10)
doSendMagicEffect({x= 32716,y= 32351,z = 12}, 10)
		
return true
end
end
