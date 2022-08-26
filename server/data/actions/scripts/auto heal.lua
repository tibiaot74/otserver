function onCastSpell(cid, var)
   	if item.itemid == 2300 then
doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
   	elseif item.itemid == 2148 and item.type < 100 then
   		doPlayerSendTextMessage(cid,22,"You have to got 100 gp's to change for platinum coin")
   	end
   end
