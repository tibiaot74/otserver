function onUse(cid, item, frompos, item2, topos)
topos = {x=topos.x, y=topos.y, z=topos.z}
	if item2.itemid == 2782 then
		doTransformItem(item2.uid,2781)
		doDecayItem(item2.uid)

	elseif item2.itemid == 3985 then
		doTransformItem(item2.uid,3984)
		doDecayItem(item2.uid)
		
	elseif item2.itemid == 3794 or item2.itemid == 3795 or item2.itemid == 3796 or item2.itemid == 3797 or item2.itemid == 3798 or item2.itemid == 3799 then
		doTransformItem(item2.uid, 3959)
		
	else 
		return 0
	end

	return 1
end