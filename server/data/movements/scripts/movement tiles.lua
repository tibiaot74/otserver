function onStepIn(cid, item, pos)
 pos = {x=32225, y=32282, z=9, stackpos=0}
mw = getThingfromPos(pos)
doCreateItem(4837,1,pos)
doTransformItem(item.uid, item.itemid-1) 
return 1
end
 
function onStepOut(cid, item, pos)
pos = {x=32225, y=32282, z=9, stackpos=0}
mw = getThingfromPos(pos)
doRemoveItem(mw.uid,1)
doCreateItem(424,1,pos)
doTransformItem(item.uid, item.itemid+1)
return 1
end