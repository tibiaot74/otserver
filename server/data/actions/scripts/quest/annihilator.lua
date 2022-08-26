 -- Annihilator script by GriZzm0
 -- Room check and monster removal by Tworn
 
 --Variables used:

 -- player?pos  = The position of the players before teleport.
 -- player?  = Get the thing from playerpos.
 --player?level = Get the players levels.
 --questslevel  = The level you have to be to do this quest.
 --questtatus?  = Get the quest status of the players.
 --demon?pos  = The position of the demons.
 --nplayer?pos  = The position where the players should be teleported too.
 --trash= position to send the demons to when clearing, 1 sqm in middle of nowhere is enough
 -- starting = Upper left point of the annihilator room area.
 -- ending = Bottom right point of the annihilator room area.
 
 --UniqueIDs used:

 --5000 = The switch.
 --5001 = Demon Armor chest.
 --5002 = Magic Sword chest.
 --5003 = Stonecutter Axe chest.
 --5004 = Present chest.


function onUse(cid, item, frompos, item2, topos)
if item.uid == 5000 then
 if item.itemid == 1946 then

 player1pos = {x=33225, y=31671, z=13, stackpos=253}
 player1 = getThingfromPos(player1pos)

 player2pos = {x=33224, y=31671, z=13, stackpos=253}
 player2 = getThingfromPos(player2pos)

 player3pos = {x=33223, y=31671, z=13, stackpos=253}
 player3 = getThingfromPos(player3pos)

 player4pos = {x=33222, y=31671, z=13, stackpos=253}
 player4 = getThingfromPos(player4pos)


	 if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

  player1level = getPlayerLevel(player1.uid)
  player2level = getPlayerLevel(player2.uid)
  player3level = getPlayerLevel(player3.uid)
  player4level = getPlayerLevel(player4.uid)

  questlevel = 100

  if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then

	  queststatus1 = getPlayerStorageValue(player1.uid,8160)
	  queststatus2 = getPlayerStorageValue(player2.uid,8160)
	  queststatus3 = getPlayerStorageValue(player3.uid,8160)
	  queststatus4 = getPlayerStorageValue(player4.uid,8160)

	  if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then
	--if 1==1 then
	demon1pos = {x=33219, y=31657, z=13}
	demon2pos = {x=33221, y=31657, z=13}
	demon3pos = {x=33220, y=31661, z=13}
	demon4pos = {x=33222, y=31661, z=13}
	demon5pos = {x=33223, y=31659, z=13}
	demon6pos = {x=33224, y=31659, z=13}
 
   doSummonCreature("Demon", demon1pos)
   doSummonCreature("Demon", demon2pos)
   doSummonCreature("Demon", demon3pos)
   doSummonCreature("Demon", demon4pos)
   doSummonCreature("Demon", demon5pos)
   doSummonCreature("Demon", demon6pos)

	nplayer1pos = {x=33222, y=31659, z=13}
	nplayer2pos = {x=33221, y=31659, z=13}
	nplayer3pos = {x=33220, y=31659, z=13}
	nplayer4pos = {x=33219, y=31659, z=13}

   doSendMagicEffect(player1pos,2)
   doSendMagicEffect(player2pos,2)
   doSendMagicEffect(player3pos,2)
   doSendMagicEffect(player4pos,2)

   doTeleportThing(player1.uid,nplayer1pos)
   doTeleportThing(player2.uid,nplayer2pos)
   doTeleportThing(player3.uid,nplayer3pos)
   doTeleportThing(player4.uid,nplayer4pos)

	 doSendMagicEffect(nplayer1pos,10)
	 doSendMagicEffect(nplayer2pos,10)
	 doSendMagicEffect(nplayer3pos,10)
	 doSendMagicEffect(nplayer4pos,10)

	 doTransformItem(item.uid,1945)

	else
	 doPlayerSendCancel(cid,"Someone has already done this quest")
	end
   else
	doPlayerSendCancel(cid,"Your level is too low")
   end
  else
  doPlayerSendCancel(cid,"You need 4 players in your team.")
  end
 end
 if item.itemid == 1945 then
doPlayerSendCancel(cid,"someone have already made this quest today.")
end
end
if item.uid == 5001 then
 queststatus = getPlayerStorageValue(cid,100)
 if queststatus == -1 then
 if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
  doPlayerSendTextMessage(cid,22,"You have found a demon armor.")
  doPlayerAddItem(cid,2494,1)
  setPlayerStorageValue(cid,100,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
end
if item.uid == 5002 then
 queststatus = getPlayerStorageValue(cid,100)
 if queststatus ~= 1 then
 if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
  doPlayerSendTextMessage(cid,22,"You have found a magic sword.")
  doPlayerAddItem(cid,2400,1)
  setPlayerStorageValue(cid,100,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
end
if item.uid == 5003 then
 queststatus = getPlayerStorageValue(cid,100)
 if queststatus ~= 1 then
 if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
  doPlayerSendTextMessage(cid,22,"You have found a stonecutter axe.")
  doPlayerAddItem(cid,2431,1)
  setPlayerStorageValue(cid,100,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
end
if item.uid == 5004 then
 queststatus = getPlayerStorageValue(cid,100)
 if queststatus ~= 1 then
 if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
  doPlayerSendTextMessage(cid,22,"You have found a present.")
  doPlayerAddItem(cid,2326,1)
  setPlayerStorageValue(cid,100,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
 end
 return 1
end
