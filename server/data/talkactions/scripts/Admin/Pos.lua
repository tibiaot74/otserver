function onSay(cid,words,param)
if getPlayerAccess(cid) >= 6 then
pos = getPlayerPosition(cid)
doPlayerSendTextMessage(cid, 22, "".. pos.x .." ".. pos.y .." ".. pos.z .."")
end
end