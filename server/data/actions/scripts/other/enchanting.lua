local t = {
	useOn = 2147,
	newId = 2343
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
    if doPlayerRemoveItem(cid,2342,1) then
		doRemoveItem(item.uid, 1)
		doPlayerAddItem(cid, 2343, 1)
		doCreatureSay(cid, 'You recharged your ' .. getItemNameById(item.itemid), TALKTYPE_ORANGE_1)

	else
		doCreatureSay(cid, 'You must use it on a ' .. getItemNameById(t.useOn), TALKTYPE_ORANGE_1)
	end
	return true
end