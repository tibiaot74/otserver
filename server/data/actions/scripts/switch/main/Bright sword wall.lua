function onUse(cid, item, frompos, item2, topos)
paymentpos = {x=32594, y=32214, z=9}
getpayment = getThingfromPos(paymentpos)

Removewall4 = {x=32604, y=32216, z=9, stackpos=1}
Removewall5 = {x=32603, y=32216, z=9, stackpos=1}
getwall4 = getThingfromPos(Removewall4)
getwall5 = getThingfromPos(Removewall5)

AddWall = {x=32605, y=32216, z=9, stackpos=1} --1026
AddPassage1 = {x=32604, y=32216, z=9, stackpos=1} --1207
AddPassage2 = {x=32603, y=32216, z=9, stackpos=1} --1208
anel = {x=32613, y=32220, z=10, stackpos=1} -- power ring

if item.itemid == 1945 then
	if getTileItemById(paymentpos, 2166).itemid == 2166 then
	doRemoveItem(getTileItemById(paymentpos, 2166).uid, 1)
	doTransformItem(item.uid,item.itemid+1)
	doRemoveItem(getwall4.uid, 1)
	doRemoveItem(getwall5.uid, 1)
	doCreateItem(2166, 1, anel)
	else
	doPlayerSendCancel(cid, "Where's the payment?")
	end

elseif item.itemid == 1946 and getwall4.itemid == 1026 then
doTransformItem(item.uid,item.itemid-1)
doPlayerSendCancel(cid, "Lever prepared for use.")

end
  return 1
  end
  