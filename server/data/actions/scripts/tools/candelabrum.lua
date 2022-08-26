function onUse(cid, item, fromPosition, itemEx, toPosition)
if item.itemid == 2041 then
doTransformItem(item.uid, 2042)

elseif item.itemid == 2042 then
doTransformItem(item.uid, 2041)
end
end