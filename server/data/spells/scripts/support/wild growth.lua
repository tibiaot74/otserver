local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1499)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end