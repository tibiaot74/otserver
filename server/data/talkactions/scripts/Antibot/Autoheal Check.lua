function onSay(cid,words,param)
if getPlayerAccess(cid) >= 4 then
	if param ~= "" then
		if getPlayerByName(param) >= 1 then
		LocalABAutoHealTest(getPlayerByName(param))
		doPlayerSendTextMessage(cid, 22, "".. param ..", have been targeted for a Autoheal test!")
		else
		doPlayerSendTextMessage(cid, 22, "A player with this name is not online!")
		end		
	else
	doPlayerSendTextMessage(cid, 22, "You must enter a valid name!")
	end
end
end

function LocalABAutoHealTest(cid)
playername = getPlayerName(cid)
if getPlayerGUIDByName(playername) > 0 then
doCreatureAddHealth(cid, -getCreatureHealth(cid) +100)
addEvent(LocalABAutoHealHpback, 100, cid)
end
end
function LocalABAutoHealHpback(cid)
playername = getPlayerName(cid)
if getPlayerGUIDByName(playername) > 0 then
doTargetCombatHealth(0, cid, COMBAT_PHYSICALDAMAGE, -getCreatureHealth(cid) +50, -getCreatureHealth(cid) +50, CONST_ME_NONE)
doCreatureAddHealth(cid, getCreatureMaxHealth(cid))
end
end