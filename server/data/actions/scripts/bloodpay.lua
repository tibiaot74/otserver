
function onUse(cid, item, frompos, item2, topos)
	if item2.itemid == 0 then
		return 0
	end	
	
local bloodpay = 2007

	if item2.uid == 25088 then
		if doPlayerRemoveItem(cid, bloodpay, 1) == 1 then 
		doPlayerSendTextMessage(cid,21,"MWAHAHAHA")	
		newpos = {x=32791, y=32334, z=10}
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		end
        elseif item2.itemid == 400081 then
		doTransformItem(item2.uid,482)

        elseif item2.itemid == 400083 then
		doTransformItem(item2.uid,484)

	elseif item2.itemid == 290003 then
		doTransformItem(item2.uid,294)
	else
		return 0
	end

        doDecayItem(item2.uid)
	
	return 1
end