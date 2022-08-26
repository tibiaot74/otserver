function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,4001) < 1 then
doPlayerSendTextMessage(cid,22,"To start djinn quest you must say 'djinns' to Melicar, you find him walking around Ankrahmun.")

elseif getPlayerStorageValue(cid,4002) == 1 then
doPlayerSendTextMessage(cid,22,"Go and talk with As'hei (The guard of Blue djinn fortress) and ask for passage.")

elseif getPlayerStorageValue(cid,4002) == 2 and getPlayerStorageValue(cid,4005) == 1 then
doPlayerSendTextMessage(cid,22,"Go to Roger (Located North East of Thais depot) and ask for mission.")

else
doPlayerSendTextMessage(cid,22,"Hmm..")
end
return true
end