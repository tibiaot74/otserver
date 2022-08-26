local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
NpcSystem.parseParameters(npcHandler)

npcHandler:setMessage(MESSAGE_GREET, "Harrrrk! You think you are strong now? You shall never escape my wrath! I am immortal!")
npcHandler:setMessage(MESSAGE_PLACEDINQUEUE, "Harrrk!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Yes, flee this place, but you will never escape my revenge!")
npcHandler:setMessage(MESSAGE_FAREWELL, "We will meet again!")

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end
 
function OrcKingSayCallback (cid, type, msg)

local npcPos = getCreaturePosition(getNpcCid())
local playerPos = getCreaturePosition(cid)

    if (msgcontains(msg:lower(),"hi") or msgcontains(msg:lower(),'hello')) and (npcHandlerfocus == 0) then
      if(getPlayerStorageValue(cid, 40268) == 1) then
           npcHandler:greet(cid)
      else
          npcHandler:say("Arrrrgh! A dirty paleskin! To me my children! Kill them my guards!", cid)
          doSummonCreature("Orc Leader", {x=npcPos.x-1,y=npcPos.y,z=npcPos.z})
	  doSummonCreature("Slime", {x=npcPos.x+1,y=npcPos.y,z=npcPos.z})
	  doSummonCreature("Orc Warlord", {x=npcPos.x,y=npcPos.y+1,z=npcPos.z})
	  doSummonCreature("Orc Warlord", {x=npcPos.x,y=npcPos.y-1,z=npcPos.z})
          doSummonCreature("Orc Leader", {x=npcPos.x+1,y=npcPos.y+1,z=npcPos.z})
	  doSummonCreature("Slime", {x=npcPos.x-1,y=npcPos.y-1,z=npcPos.z})
          doSummonCreature("Slime", {x=npcPos.x+1,y=npcPos.y-1,z=npcPos.z})
          doSummonCreature("Orc Leader", {x=npcPos.x-1,y=npcPos.y+1,z=npcPos.z})
	  setPlayerStorageValue(cid, 40268, 1)
      end
    elseif (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings')) and (npcHandlerfocus > 0) and (npcHandlerfocus ~= cid) then
      if(getPlayerStorageValue(cid, 40268) == 1) then
          npcHandler:onGreet(cid)
      else
          npcHandler:say("Arrrrgh! A dirty paleskin! To me my children! Kill them my guards!", cid)
          doSummonCreature("Orc Leader", {x=npcPos.x-1,y=npcPos.y,z=npcPos.z})
	  doSummonCreature("Slime", {x=npcPos.x+1,y=npcPos.y,z=npcPos.z})
	  doSummonCreature("Orc Warlord", {x=npcPos.x,y=npcPos.y+1,z=npcPos.z})
	  doSummonCreature("Orc Warlord", {x=npcPos.x,y=npcPos.y-1,z=npcPos.z})
          doSummonCreature("Orc Leader", {x=npcPos.x+1,y=npcPos.y+1,z=npcPos.z})
	  doSummonCreature("Slime", {x=npcPos.x-1,y=npcPos.y-1,z=npcPos.z})
          doSummonCreature("Slime", {x=npcPos.x+1,y=npcPos.y-1,z=npcPos.z})
          doSummonCreature("Orc Leader", {x=npcPos.x-1,y=npcPos.y+1,z=npcPos.z})
	  setPlayerStorageValue(cid, 40268, 1)
      end
    elseif (msgcontains(msg:lower(),'bye') or msgcontains(msg:lower(),'farewell')) then
           npcHandler:onFarewell(cid)

    elseif (msgcontains(msg, 'lamp')) and (getPlayerStorageValue(cid, 1011) == 1) then
        if (getPlayerStorageValue(cid, 1013) ~= 1) then
           npcHandler:say("I can sense your evil intentions to imprison a djinn! You are longing for the lamp, which I still possess. ...", cid, 1000)
           npcHandler:say("Who do you want to trap in this cursed lamp?", cid, 10000)
           npcHandlerfocus = 1
        end
    elseif(msgcontains(msg, 'lamp')) and (getPlayerStorageValue(cid, 1034) == 1) then
        if (getPlayerStorageValue(cid, 1036) ~= 1) then
           npcHandler:say("I can sense your evil intentions to imprison a djinn! You are longing for the lamp, which I still possess. ...", cid, 1000)
           npcHandler:say("Who do you want to trap in this cursed lamp?", cid, 10000)
           npcHandlerfocus = 2
        end
    elseif(msgcontains(msg, "malor")) and (npcHandlerfocus == 2) then
           setPlayerStorageValue(cid, 1036, 1)                     
           npcHandler:say("I was waiting for this day! Take the lamp and let Malor feel my wrath.",cid)
           doPlayerAddItem(cid,2344,1)
           npcHandlerfocus = 0

    elseif(msgcontains(msg, "malor")) and (npcHandlerfocus == 1) then
           setPlayerStorageValue(cid, 1013, 1)                       
           npcHandler:say("I was waiting for this day! Take the lamp and let Malor feel my wrath.",cid)
           doPlayerAddItem(cid,2344,1)
           npcHandlerfocus = 0

    elseif (npcHandlerfocus == 2) or (npcHandlerfocus == 1) then
           npcHandler:say("I don't know your enemy, paleskin! Begone!",cid)

    elseif(msgcontains(msg, "malor") or msgcontains(msg, "djinn")) then
           npcHandlerfocus = 0
           npcHandler:say("This cursed djinn king! I set him free from an enchanted lamp, and he cheated me!",cid)
    end

        local keywords = {
        ["hive"] = {response = "I can sense the presence and the feelings of my underlings and minions. I embrace the rage of the horde."},
        ["minion"] = {response = "The orcish horde of this hive is under my control. I sense their emotions and their needs and provide them with the leadership they need to focus their hate and rage."},
        ["underling"] = {response = "The orcish horde of this hive is under my control. I sense their emotions and their needs and provide them with the leadership they need to focus their hate and rage."},
        ["horde"] = {response = "The orcish horde of this hive is under my control. I sense their emotions and their needs and provide them with the leadership they need to focus their hate and rage."},
        ["hate"] = {response = "Hate and rage are the true blessings of Blog, since they are powerful weapons. They give the hive strength. I provide them with direction and focus."},
        ["rage"] = {response = "Hate and rage are the true blessings of Blog, since they are powerful weapons. They give the hive strength. I provide them with direction and focus."},
        ["direction"] = {response = "To conquer, to destroy and to dominate. Orcs are born to rule the world."},
        ["focus"] = {response = "To conquer, to destroy and to dominate. Orcs are born to rule the world."},
        ["blog"] = {response = "The Raging One blessed us with his burning hate. We are truly his children and therefore divine."},
        ["divine"] = {response = "The orcs are the bearers of Blogs rage. This makes us the ultimate fighters and the most powerful of all races."},
        ["orc"] = {response = "The orcs are the bearers of Blogs rage. This makes us the ultimate fighters and the most powerful of all races."},
        ["slime"] = {response = "Pah! Don't mock me, mortal! This shape is a curse which the evil djinn bestowed upon me!"},
        ["cheat"] = {response = "Because I freed him he granted me three wishes. He was true to his word in the first two wishes."},
        ["wish"] = {response = "He built this fortress over Uldrek's grave within a single night. Also, he granted me my second wish and gave me immortality. Test it and try to kill me if you want. Har Har!"},
        ["third"] = {response = "I wished to father more healthy and fertile children as any orc has ever done. But the djinn cheated me and made me a slime! Then he laughed at me and left for his abandoned fortress in the Deathwish Mountains."},
        ["deathwish"] = {response = "His ancient fortress on Darama was deserted as the evil Djinn fled this world after his imprisonment. Now the time has come for the evil Djinns to return to their master although this will certainly awaken the good Djinn too."},
        ["abandoned"] = {response = "His ancient fortress on Darama was deserted as the evil Djinn fled this world after his imprisonment. Now the time has come for the evil Djinns to return to their master although this will certainly awaken the good Djinn too."},
        ["good djinn"] = {response = "I will not share anything more about that topic with you paleskins."},
        ["awaken"] = {response = "I will not share anything more about that topic with you paleskins."},
        ["paleskins"] = {response = "You are as ugly as maggots, although not quite as as tasty."},
        }

        for v in pairs(keywords) do
          if (msgcontains(msg, v)) then
               npcHandler:say(keywords[v].response, cid)
               npcHandlerfocus = 0
          end
        end
   return 1
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, OrcKingSayCallback)