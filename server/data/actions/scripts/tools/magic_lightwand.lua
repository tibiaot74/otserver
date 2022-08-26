function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.itemid == 2162 then
		doTransformItem(item.uid, 2163)
		doDecayItem(item.uid)
		return TRUE
	elseif item.itemid == 2163 then
		doTransformItem(item.uid, 2162)
		return TRUE
	end
	return FALSE
end