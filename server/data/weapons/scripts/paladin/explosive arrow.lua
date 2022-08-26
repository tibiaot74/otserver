local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BURSTARROW)
function onGetFormulaValues(cid, level, maglevel)
local skill_level = getPlayerMagLevel(cid)
local exp_level = getPlayerLevel(cid) * 0.20
	min = -(skill_level * 0.5) + exp_level
	max = -(skill_level * 2.97) + exp_level
	
	return min, max
end

local area = createCombatArea( { {1, 1, 1}, {1, 3, 1}, {1, 1, 1} } )
setCombatArea(combat, area)

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
 

function onUseWeapon(cid, var)
	return doCombat(cid, combat, var)
end