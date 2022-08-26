function onStepIn(cid, item, pos)
	if (getTilePzInfo(pos) == FALSE) then
		if isPlayer(cid) == FALSE then
		doTargetCombatHealth(0, cid, COMBAT_PHYSICALDAMAGE, -10, -30, CONST_ME_NONE)
		end
	end
	doTransformItem(item.uid, item.itemid - 1)
	return TRUE
end