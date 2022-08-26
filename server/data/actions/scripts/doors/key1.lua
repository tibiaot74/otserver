--keys--

function onUse(cid, item, frompos, item2, topos)
LOCKEDDOOR = {1209, 1212, 1231, 1234, 1249, 1252, 3535, 3544, 4913, 4916, 5098, 5107, 5116, 5125, 5134, 5137, 5140, 5143, 5278, 5281, 6192, 6195, 6249, 6252, 6891, 6900, 7033, 7042}
UNLOCKED = {1210, 1213, 1232, 1235, 1250, 1253, 3536, 4917, 3545, 4914, 5099, 5108, 5117, 5126, 5135, 5138, 5141, 5144, 5279, 5282, 6193, 6196, 6250, 6253, 6892, 6901, 7034, 7043}
OPEN = {1211, 1214, 1233, 1236, 1251, 1254, 3537, 4918, 3546, 4915, 5100, 5109, 5118, 5127, 5136, 5139, 5142, 5145, 5280, 5283, 6194, 6197, 6251, 6254, 6893, 6902, 7035, 7044}
CHECKKEY = {2086, 2087, 2088, 2089, 2090, 2091, 2092}
	if item.actionid > 0 and item.actionid == item2.actionid then
		match = 1
	else
		match = 0
	end

	if isInArray(LOCKEDDOOR, item2.itemid) == 1 then
		if match == 1 then
			doTransformItem(item2.uid,item2.itemid+2)
			doTransformItem(itemEx.uid, ditem2.itemid+2)
		else
			doPlayerSendCancel(cid,"The key does not match.")
		end

	elseif isInArray(UNLOCKED, item2.itemid) == 1 then
		if match == 1 then
			doTransformItem(item2.uid,item2.itemid-1)
			doTransformItem(itemEx.uid, item2.itemid-1)
		else
			doPlayerSendCancel(cid,"The key does not match.")
		end
		
		
	elseif isInArray(OPEN, item2.itemid) == 1 then
		if match == 1 then
			doTransformItem(item2.uid,item2.itemid-2)
			doTransformItem(itemEx.uid, item2.itemid-2)
		else
			doPlayerSendCancel(cid,"The key does not match.")
		end	
		
		
		
	else
		return 0
	end

	return 1
	
end

