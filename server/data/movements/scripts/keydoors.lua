function onStepOut(cid, item, position, fromPosition)
if(item.actionid > 0) then
	doTransformItem(item.uid, item.itemid-2)
end	
		return TRUE
end 