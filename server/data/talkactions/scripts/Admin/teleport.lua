function onSay(cid,words,param)

if getPlayerAccess(cid) >= 6 then
	if param == "jakundaf" then
	PLACE = {x=32650, y=32093, z=7}
	elseif param == "greenshore" then
	PLACE = {x=32272, y=32050, z=7}
	elseif param == "ghostland" then
	PLACE = {x=32196, y=31806, z=7}
	elseif param == "rookgaard" then
	PLACE = {x=32096, y=32204, z=7}
	elseif param == "fibula" then
	PLACE = {x=32174, y=32439, z=7}
	elseif param == "plains of havoc" then
	PLACE = {x=32756, y=32303, z=7}
	elseif param == "amazon camp" then
	PLACE = {x=32846, y=31926, z=7}
	elseif param == "orc land" then
	PLACE = {x=32852, y=31768, z=7}
	elseif param == "northport" then
	PLACE = {x=32485, y=31613, z=7}
	elseif param == "demon helmet quest" then
	PLACE = {x=33319, y=31592, z=15}
	elseif param == "annihilator quest" then
	PLACE = {x=33224, y=31658, z=13}
	elseif param == "behemoth" then
	PLACE = {x=33295, y=31700, z=15}
	elseif param == "cormaya" then
	PLACE = {x=33302, y=31969, z=7}
	elseif param == "eremo" then
	PLACE = {x=33321, y=31882, z=7}
	elseif param == "ghost ship" then
	PLACE = {x=33330, y=32174, z=5}
	elseif param == "darashia minotaur" then
	PLACE = {x=33305, y=32283, z=7}
	elseif param == "drefia" then
	PLACE = {x=33004, y=32431, z=7}
	elseif param == "forbidden land" then
	PLACE = {x=33015, y=32579, z=7}
	elseif param == "ankrahmun dragon 3" then
	PLACE = {x=33117, y=32608, z=7}
	elseif param == "ankrahmun dragon 2" then
	PLACE = {x=33097, y=32693, z=7}
	elseif param == "chor" then
	PLACE = {x=32956, y=32855, z=7}
	elseif param == "dworc" then
	PLACE = {x=32644, y=32925, z=7}
	elseif param == "banuta" then
	PLACE = {x=32812, y=32563, z=7}
	elseif param == "current" then
	PLACE = {x=32604, y=32217, z=9}
	end

doTeleportThing(cid, PLACE)
end
end
