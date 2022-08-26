function onUse(cid, item, frompos, item2, topos)
if getPlayerSoul(cid) == 200 then
MESSAGE = "You have ".. getPlayerSoul(cid) .."/300 soul points.\n(One Unjustified kill cost 100 soul)"

elseif getPlayerSoul(cid) >= 61 and getPlayerSoul(cid) <= 180 then
MESSAGE = "You have ".. getPlayerSoul(cid) .."/300 soul points.\n(One Unjustified kill cost 100 soul)\n\nIt will take 1 hour and ".. ((300 -getPlayerSoul(cid)) / 2) -60 .." Minutes of hunting before you got full soul again."

elseif getPlayerSoul(cid) >= 0 and getPlayerSoul(cid) <= 60 then
MESSAGE = "You have ".. getPlayerSoul(cid) .."/300 soul points.\n(One Unjustified kill cost 100 soul)\n\nIt will take 2 hours and ".. ((300 -getPlayerSoul(cid)) / 2) -120 .." Minutes of hunting before you got full soul again."
else
MESSAGE = "You have ".. getPlayerSoul(cid) .."/300 soul points.\n(One Unjustified kill cost 100 soul)\n\nIt will take ".. (300 -getPlayerSoul(cid)) / 2 .." Minutes of hunting before you got full soul again."
end		


doShowTextDialog(cid, 2354, "".. MESSAGE .."")
	return 1
end