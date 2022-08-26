function onSay(cid,words,param)
if getPlayerAccess(cid) >= 4 then
resultname = mysqlQuery("SELECT `account_id`, `name`, `name` FROM `players` WHERE `players`.`name` = '".. param .."'", "account_id, name, id")

	if getNumberValue(resultname.id) > 0 then
		if doPlayerSendTextMessage(getPlayerByName(resultname.name), 19, "You have been Banished! Look at www.mestera.net for more information.") == TRUE then
		doSendMagicEffect(getPlayerPosition(getPlayerByName(resultname.name)), 13)
		end
		addEvent(Banishment, 3000, cid,words,param)
	else
	doPlayerSendTextMessage(cid, 9, "You must enter a valid name!")
	end
end
end

function Banishment(cid,words,param)
resultname = mysqlQuery("SELECT `account_id`, `name` FROM `players` WHERE `players`.`name` = '".. param .."'", "account_id, name")
resultacc = mysqlQuery("SELECT `unban_date` FROM `accounts` WHERE `accounts`.`id` = '".. resultname.account_id .."'", "unban_date")

	if doRemoveCreature(getPlayerByName(resultname.name)) == TRUE then
	doPlayerSendTextMessage(cid, 9, "".. resultname.name .." were online and have been kicked!")
	else
	doPlayerSendTextMessage(cid, 9, "".. resultname.name .." Was not online!")
	end

if getNumberValue(resultacc.unban_date) > 0 then
UNBANDATE = ((os.time()) +30*24*60*60) --Have been  banished before, normal punishment
else
UNBANDATE = ((os.time()) +7*24*60*60) --Never been banished before, smooth punishment
end
	mysqlQuery("UPDATE `accounts` SET `unban_date` = ".. UNBANDATE ..", `ban_by` = \"".. getPlayerName(cid) .."\", `ban_type` = 2 WHERE `accounts`.`id` ='".. resultname.account_id .."';", "set")
	doPlayerSendTextMessage(cid, 9, "".. resultname.name .." have been Banished!")
end