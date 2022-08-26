function onSay(cid,words,param)
if param == "sd" then
valid=1
bptype=2003
itemtype=2268
counttype=1
elseif param == "uh" then
valid=1
bptype=2002
itemtype=2273
counttype=1
elseif param == "gfb" then
valid=1
bptype=2000
itemtype=2304
counttype=2
elseif param == "mwall" then
valid=1
bptype=2004
itemtype=2293
counttype=3
elseif param == "ebomb" then
valid=1
bptype=1995
itemtype=2262
counttype=2
elseif param == "dfield" then
valid=1
bptype=1996
itemtype=2261
counttype=3
elseif param == "hmm" then
valid=1
bptype=2001
itemtype=2311
counttype=5
elseif param == "explosion" then
valid=1
bptype=2001
itemtype=2313
counttype=3
else
valid=0
end


if valid == 1 then
BAG = doPlayerAddItem(cid, bptype, 1)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
doAddContainerItem(BAG, itemtype, counttype)
end
end