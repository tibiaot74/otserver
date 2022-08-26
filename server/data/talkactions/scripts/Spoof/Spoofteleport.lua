function onSay(cid,words,param)

if getPlayerAccess(cid) >= 1 then
if param ~= "exp" and param ~= "skill" then
	if param == "1" then
	PLACE = {x=32929, y=31952, z=7}
	elseif param == "2" then
	PLACE = {x=32877, y=31675, z=8}
	elseif param == "3" then
	PLACE = {x=32566, y=31774, z=11}
	elseif param == "4" then
	PLACE = {x=32472, y=31818, z=10}
	elseif param == "5" then
	PLACE = {x=33012, y=32106, z=15}
	elseif param == "6" then
	PLACE = {x=32689, y=32202, z=15}
	elseif param == "7" then
	PLACE = {x=32677, y=32203, z=9}
	elseif param == "8" then
	PLACE = {x=32475, y=32118, z=12}
	elseif param == "9" then
	PLACE = {x=32258, y=32119, z=12}
	elseif param == "10" then
	PLACE = {x=32839, y=32238, z=11}
	elseif param == "11" then
	PLACE = {x=33049, y=32473, z=15}
	elseif param == "12" then
	PLACE = {x=33093, y=32564, z=15}
	elseif param == "13" then
	PLACE = {x=33287, y=32788, z=15}
	elseif param == "14" then
	PLACE = {x=33304, y=32558, z=15}
	elseif param == "15" then
	PLACE = {x=33114, y=32314, z=10}
	end
	doTeleportThing(cid, PLACE)
elseif param == "exp" then
--Advancer, Player must advance in lvl/skills to not be detected as spoof--
doPlayerAddExp(cid, (getPlayerLevel(cid)*400))
doPlayerAddManaSpent(cid, getPlayerLevel(cid)*200) --Magic
	
elseif param == "skill" then
--Advancer, Player must advance in lvl/skills to not be detected as spoof--
	if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 then
	
	elseif getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 6 then
	
	elseif getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 7 then
	doPlayerAddSkillTry(cid, 4, getPlayerLevel(cid)*100) --Distance
	
	elseif getPlayerVocation(cid) == 4 or getPlayerVocation(cid) == 8 then
	doPlayerAddSkillTry(cid, getPlayerStorageValue(cid,1338), getPlayerLevel(cid)*100) --Club, Sword and Axe
	
	end
	
end
end
end
