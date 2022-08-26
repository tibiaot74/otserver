function onUse(cid, item, frompos, item2, topos)
 
local mana = getCreatureMaxMana(cid)
local ppos = getCreaturePosition(cid)

doSendMagicEffect(ppos, CONST_ME_MAGIC_BLUE) 
doCreatureAddMana(cid, mana) 
doCreatureSay(cid,"Aaaah...")
 
end