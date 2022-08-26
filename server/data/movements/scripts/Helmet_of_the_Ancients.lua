function onAddItem(moveitem, tileitem, pos)
if moveitem.itemid == 2147 then
	Helmet = getTileItemById(pos, 2342)
	Ruby = getTileItemById(pos, 2147)
	if Helmet.itemid == 2342 and Ruby.itemid == 2147 then
	doRemoveItem(Ruby.uid, 1)
	doTransformItem(Helmet.uid,2343)
	doSendMagicEffect(pos, 15)
	end
end
return TRUE
end