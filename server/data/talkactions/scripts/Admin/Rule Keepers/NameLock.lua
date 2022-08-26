function onSay(cid,words,param)
if getPlayerAccess(cid) >= 4 then
resultname = mysqlQuery("SELECT `name`, `id` FROM `players` WHERE `players`.`name` = \"" .. param .. "\"", "name, id")
	if getNumberValue(resultname.id) > 0 then
		if doRemoveCreature(getPlayerByName(resultname.name)) then
		doPlayerSendTextMessage(cid, 9, "".. resultname.name .." were online and have been kicked!")
		else
		doPlayerSendTextMessage(cid, 9, "".. resultname.name .." Was not online!")
		end
	mysqlQuery("UPDATE `players` SET `name_locked` = 1, `name_lock_by` = \"".. getPlayerName(cid) .."\" WHERE `players`.`name` =\"".. resultname.name .."\";", "set")
	doPlayerSendTextMessage(cid, 9, "".. resultname.name .." have been name locked!")
	else
	doPlayerSendTextMessage(cid, 9, "You must enter a valid name!")
	end
end
end

