function onStepIn(cid, item, pos)
			doTargetCombatHealth(0, cid, COMBAT_POISONDAMAGE, -10, -30, CONST_ME_NONE)
			doTransformItem(item.uid, item.itemid - 1)
	return TRUE
end