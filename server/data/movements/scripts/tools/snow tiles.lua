function onStepIn(cid, item, position, fromPosition)
	doTransformItem(item.uid, item.itemid == 670 and 6594 or item.itemid + 15)
	doDecayItem(item.uid)
end