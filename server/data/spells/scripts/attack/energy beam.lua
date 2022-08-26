local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.68, -0, -1.3, 0)

local arr = {
{0, 1, 0},
{0, 1, 0},
{0, 1, 0},
{0, 1, 0},
{0, 3, 0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
    if exhaustion.check(cid, 30030) then
	 doPlayerSendCancel(cid, "You are exhausted.")
     else
	exhaustion.set(cid, 30030, 1)
	return doCombat(cid, combat, var)
	end
end