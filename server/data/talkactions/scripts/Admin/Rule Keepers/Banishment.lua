function onSay(cid,words,param)
if getPlayerAccess(cid) >= 4 then
resultname = mysqlQuery("SELECT `account_id`, `name` FROM `players` WHERE `players`.`name` = '" .. param .. "'", "account_id, name")

	if getNumberValue(resultname.id) > 0 then
		if doPlayerSendTextMessage(getPlayerByName(resultname.name), 19, "You have been Banished! Look at www.mestera.net for more information.") then
		doSendMagicEffect(pos, type)
		end
		addEvent(Banishment, 3000, cid,words,param)
	else
	doPlayerSendTextMessage(cid, 9, "You must enter a valid name! ".. param .."")
	end
end
end

function Banishment(cid,words,param)
resultname = mysqlQuery("SELECT `account_id`, `name` FROM `players` WHERE `players`.`name` = '" .. param .. "'", "account_id, name")
resultacc = mysqlQuery("SELECT `unban_date` FROM `players` WHERE `players`.`name` = '" .. resultname.name .. "'", "unban_date")
if getNumberValue(resultacc.unban_date) > 0 then
BANDAYS = 14 --Have been  banished before, normal punishment
else
BANDAYS = 2 --Never been banished before, smooth punishment
end


UNBANDATE = ((os.time()) +BANDAYS*24*60*60)
	if doRemoveCreature(getPlayerByName(resultname.name)) then
	doPlayerSendTextMessage(cid, 9, "".. resultname.name .." were online and have been kicked!")
	else
	doPlayerSendTextMessage(cid, 9, "".. resultname.name .." Was not online!")
	end
	mysqlQuery("UPDATE `accounts` SET `unban_date` = ".. UNBANDATE ..", `ban_by` = \"".. getPlayerName(cid) .."\", `ban_type` = 0 WHERE `accounts`.`id` ='".. resultname.account_id .."';", "set")
	doPlayerSendTextMessage(cid, 9, "".. resultname.name .." have been name locked!")
end