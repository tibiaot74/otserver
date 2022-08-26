function onUse(cid, item, frompos, item2, topos)
	if item2.itemid == 2739 then
		doTransformItem(item2.uid,2738)
		doDecayItem(item2.uid)
		doCreateItem(2694,1,topos)
	end
	return 1
end