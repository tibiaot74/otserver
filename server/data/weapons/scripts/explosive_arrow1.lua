local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BURSTARROW)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, 0, -.55, 0)

local combat1 = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 0)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 0)
setCombatParam(combat, COMBAT_PARAM_TYPE, CONST_ME_POFF)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BURSTARROW)

local area = createCombatArea( { {1, 1, 1}, {1, 3, 1}, {1, 1, 1} } )
setCombatArea(combat, area)
setCombatArea(combat1, area)

local number = math.random(1, 100)

function onUseWeapon(cid, var)	
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'Debug: number= ' .. number .. '.')
	if  number <= 10 then
		return doCombat(cid, combat1, var)
	else
		return doCombat(cid, combat, var)
       end
end