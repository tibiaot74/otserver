function onStepIn(cid, item, position, fromPosition, toPosition)
if isPremium(cid) then
doSendMagicEffect(position,CONST_ME_MAGIC_BLUE)
else
doTeleportThing(cid, fromPosition)
doPlayerSendCancel(cid, "Not have premium account.")
end
return true
end