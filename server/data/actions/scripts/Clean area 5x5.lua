function onUse(cid, item, frompos, item2, topos)

	ipos1 = {x=topos.x-2, y=topos.y-2, z=topos.z, stackpos=255}
	geti1 = getThingfromPos(ipos1)

	ipos2 = {x=topos.x-1, y=topos.y-2, z=topos.z, stackpos=255}
	geti2 = getThingfromPos(ipos2)

	ipos3 = {x=topos.x, y=topos.y-2, z=topos.z, stackpos=255}
	geti3 = getThingfromPos(ipos3)

	ipos4 = {x=topos.x+1, y=topos.y-2, z=topos.z, stackpos=255}
	geti4 = getThingfromPos(ipos4)

	ipos5 = {x=topos.x+2, y=topos.y-2, z=topos.z, stackpos=255}
	geti5 = getThingfromPos(ipos5)

	ipos6 = {x=topos.x-2, y=topos.y-1, z=topos.z, stackpos=255}
	geti6 = getThingfromPos(ipos6)

	ipos7 = {x=topos.x-1, y=topos.y-1, z=topos.z, stackpos=255}
	geti7 = getThingfromPos(ipos7)

	ipos8 = {x=topos.x, y=topos.y-1, z=topos.z, stackpos=255}
	geti8 = getThingfromPos(ipos8)

	ipos9 = {x=topos.x+1, y=topos.y-1, z=topos.z, stackpos=255}
	geti9 = getThingfromPos(ipos9)

	ipos10 = {x=topos.x+2, y=topos.y-1, z=topos.z, stackpos=255}
	geti10 = getThingfromPos(ipos10)

	ipos11 = {x=topos.x-2, y=topos.y, z=topos.z, stackpos=255}
	geti11 = getThingfromPos(ipos11)

	ipos12 = {x=topos.x-1, y=topos.y, z=topos.z, stackpos=255}
	geti12 = getThingfromPos(ipos12)

	ipos13 = {x=topos.x, y=topos.y, z=topos.z, stackpos=255}
	geti13 = getThingfromPos(ipos13)

	ipos14 = {x=topos.x+1, y=topos.y, z=topos.z, stackpos=255}
	geti14 = getThingfromPos(ipos14)

	ipos15 = {x=topos.x+2, y=topos.y, z=topos.z, stackpos=255}
	geti15 = getThingfromPos(ipos15)

	ipos16 = {x=topos.x-2, y=topos.y+1, z=topos.z, stackpos=255}
	geti16 = getThingfromPos(ipos16)

	ipos17 = {x=topos.x-1, y=topos.y+1, z=topos.z, stackpos=255}
	geti17 = getThingfromPos(ipos17)

	ipos18 = {x=topos.x, y=topos.y+1, z=topos.z, stackpos=255}
	geti18 = getThingfromPos(ipos18)

	ipos19 = {x=topos.x+1, y=topos.y+1, z=topos.z, stackpos=255}
	geti19 = getThingfromPos(ipos19)

	ipos20 = {x=topos.x+2, y=topos.y+1, z=topos.z, stackpos=255}
	geti20 = getThingfromPos(ipos20)

	ipos21 = {x=topos.x-2, y=topos.y+2, z=topos.z, stackpos=255}
	geti21 = getThingfromPos(ipos21)

	ipos22 = {x=topos.x-1, y=topos.y+2, z=topos.z, stackpos=255}
	geti22 = getThingfromPos(ipos22)

	ipos23 = {x=topos.x, y=topos.y+2, z=topos.z, stackpos=255}
	geti23 = getThingfromPos(ipos23)

	ipos24 = {x=topos.x+1, y=topos.y+2, z=topos.z, stackpos=255}
	geti24 = getThingfromPos(ipos24)

	ipos25 = {x=topos.x+2, y=topos.y+2, z=topos.z, stackpos=255}
	geti25 = getThingfromPos(ipos25)

	if geti1.itemid > 0 then
		doSendMagicEffect(ipos1,2)
		doRemoveItem(geti1.uid,100)
	end
	if geti2.itemid > 0 then
		doSendMagicEffect(ipos2,2)
		doRemoveItem(geti2.uid,100)
	end
	if geti3.itemid > 0 then
		doSendMagicEffect(ipos3,2)
		doRemoveItem(geti3.uid,100)
	end
	if geti4.itemid > 0 then
		doSendMagicEffect(ipos4,2)
		doRemoveItem(geti4.uid,100)
	end
	if geti5.itemid > 0 then
		doSendMagicEffect(ipos5,2)
		doRemoveItem(geti5.uid,100)
	end
	if geti6.itemid > 0 then
		doSendMagicEffect(ipos6,2)
		doRemoveItem(geti6.uid,100)
	end
	if geti7.itemid > 0 then
		doSendMagicEffect(ipos7,2)
		doRemoveItem(geti7.uid,100)
	end
	if geti8.itemid > 0 then
		doSendMagicEffect(ipos8,2)
		doRemoveItem(geti8.uid,100)
	end
	if geti9.itemid > 0 then
		doSendMagicEffect(ipos9,2)
		doRemoveItem(geti9.uid,100)
	end
	if geti10.itemid > 0 then
		doSendMagicEffect(ipos10,2)
		doRemoveItem(geti10.uid,100)
	end
	if geti11.itemid > 0 then
		doSendMagicEffect(ipos11,2)
		doRemoveItem(geti11.uid,100)
	end
	if geti12.itemid > 0 then
		doSendMagicEffect(ipos12,2)
		doRemoveItem(geti12.uid,100)
	end
	if geti13.itemid > 0 then
		doSendMagicEffect(ipos13,2)
		doRemoveItem(geti13.uid,100)
	end
	if geti14.itemid > 0 then
		doSendMagicEffect(ipos14,2)
		doRemoveItem(geti14.uid,100)
	end
	if geti15.itemid > 0 then
		doSendMagicEffect(ipos15,2)
		doRemoveItem(geti15.uid,100)
	end
	if geti16.itemid > 0 then
		doSendMagicEffect(ipos16,2)
		doRemoveItem(geti16.uid,100)
	end
	if geti17.itemid > 0 then
		doSendMagicEffect(ipos17,2)
		doRemoveItem(geti17.uid,100)
	end
	if geti18.itemid > 0 then
		doSendMagicEffect(ipos18,2)
		doRemoveItem(geti18.uid,100)
	end
	if geti19.itemid > 0 then
		doSendMagicEffect(ipos19,2)
		doRemoveItem(geti19.uid,100)
	end
	if geti20.itemid > 0 then
		doSendMagicEffect(ipos20,2)
		doRemoveItem(geti20.uid,100)
	end
	if geti21.itemid > 0 then
		doSendMagicEffect(ipos21,2)
		doRemoveItem(geti21.uid,100)
	end
	if geti22.itemid > 0 then
		doSendMagicEffect(ipos22,2)
		doRemoveItem(geti22.uid,100)
	end
	if geti23.itemid > 0 then
		doSendMagicEffect(ipos23,2)
		doRemoveItem(geti23.uid,100)
	end
	if geti24.itemid > 0 then
		doSendMagicEffect(ipos24,2)
		doRemoveItem(geti24.uid,100)
	end
	if geti25.itemid > 0 then
		doSendMagicEffect(ipos25,2)
		doRemoveItem(geti25.uid,100)
	end
	return 1
end