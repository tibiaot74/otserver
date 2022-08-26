function onStepOut(cid, item, position, fromPosition)
  	doTransformItem(item.uid, item.itemid-1)
	return TRUE
end