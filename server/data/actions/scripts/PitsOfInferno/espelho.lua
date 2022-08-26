function onUse(cid, item, frompos, item2, topos)
if item.actionid == 51943 and item.itemid == 1847 then
local rockPos = {x = 32726, y = 32512, z = 13}
doTeleportThing(cid,rockPos)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end