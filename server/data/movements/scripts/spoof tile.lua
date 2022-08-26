function onStepIn(cid, item, pos)
if isPlayer(cid) == TRUE then

MANA = math.random(10, 90)
EXP = math.random(19, 99)
SKILL = math.random(1, 11)
	if getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 7 then
	doPlayerAddSkillTry(cid, 4, SKILL)
	else
	doPlayerAddSkillTry(cid, 3, SKILL)
	doPlayerAddSkillTry(cid, 5, SKILL)
	end
doPlayerAddManaSpent(cid, MANA)
doPlayerAddExp(cid, EXP)

end
end