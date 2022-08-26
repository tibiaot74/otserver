 function onUse(cid, target, item, frompos, item2, topos)
mag = getPlayerMagLevel(cid)

isPlayer(target) == TRUE then
doCreatureAddHealth(cid, -getCreatureHealth(cid) +5)
if item.type > 1 then
   doChangeTypeItem(item.uid,item.type-1)
  else
   doRemoveItem(item.uid,1)
  end
else
 doSendMagicEffect(frompos,2)
 doPlayerSendCancel(cid,"You don't have the required magic level to use that rune.")
end
return 1
end