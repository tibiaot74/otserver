function onStepIn(cid, item, position, fromPosition)
addEvent(onThink, 1000, seconds)
end

function onThink() npcHandler:onThink()
chance = math.random(1,40)
	if chance == 10 then
	doPlayerSay(cid, "/save", 1)

	elseif chance == 20 then
	doPlayerSay(cid, "/save", 1)

	elseif chance == 30 then
	doPlayerSay(cid, "/save", 1)

	elseif chance == 40 then
	doPlayerSay(cid, "/save", 1)

	end
end