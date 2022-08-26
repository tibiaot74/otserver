local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

npcHandler:setMessage(MESSAGE_GREET, "Welcome to my little kingdom, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_PLACEDINQUEUE, "Wait |PLAYERNAME|, don't go away, I am ready soon and don't get visitors often.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "I wish I could do that, too.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye, visit me again. I will be here, promised.")

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end
  
function PartosSayCallback (cid, type, msg)
  if(not npcHandler:isFocused(cid)) then
     return 0
  end
 
        if(msgcontains(msg:lower(),"baa'leal") or msgcontains(msg:lower(),"supplies") or msgcontains(msg:lower(),"mal'ouquah") or msgcontains(msg:lower(),"djinn")) then
            if (getPlayerStorageValue(cid, 1025) == 1) then
                setPlayerStorageValue(cid, 1026, 1)
                npcHandler:say("What!? I bet, Baa'leal sent you! ...", cid, 1000)
                npcHandler:say("I won't tell you anything! Shove off!", cid, 6000)
            else
                npcHandler:say("I won't talk about that.",cid)
            end
          elseif(msgcontains(msg:lower(),"ankrahmun")) then
                npcHandler:say("Yes, I've lived in Ankrahmun for quite some time. Ahh, good old times! ...", cid, 1000)
                npcHandler:say("Unfortunately I had to relocate. <sigh> ...", cid, 8000)
                npcHandler:say("Business reasons - you know.", cid, 13500)

        elseif(msgcontains(msg:lower(),"job")) then
                npcHandler:say("Guess it! I give you a hint: I am not in this cell to clean it up! ...", cid,1000)
                npcHandler:say("I wished, I would have never left Ankrahmun.", cid, 8000)

        elseif(msgcontains(msg:lower(),"excalibug")) and (npcHandler.Topic == 3) then
                npcHandler:doTopic(cid, 0)
                npcHandler:say("My late mentor once told me he found a wallcarving about this sword in a cave beneath the castle.",cid)
        elseif(msgcontains(msg:lower(),"wallcarving")) and (npcHandler.Topic == 3) then
                npcHandler:doTopic(cid, 0)
                npcHandler:say("That part of the dungeon was recently blocked by a cave-in. It was unsecure before, and only a fool would have entered there. I stayed out and alive.",cid)
        elseif(msgcontains(msg:lower(),"excalibug")) then
                npcHandler:doTopic(cid, 0)
                npcHandler:say("Excalibug? No way that I tell you something about it!",cid)
        elseif(msgcontains(msg:lower(),"grapes")) then
                npcHandler:say("Do you have any grapes with you?",cid)
                npcHandler:doTopic(cid, 2)
        elseif(msgcontains(msg:lower(),"yes")) and (npcHandler.Topic == 2) then
             if (doPlayerRemoveItem(cid,2681,1) == TRUE) then 
                npcHandler:say("What do you want for that ...ohhh... tasty ...uhm... sweet ...drool... delicous ...hmm... grapes?",cid)
                npcHandler:doTopic(cid, 3)
             else
                npcHandler:say("Go away, if you don't have any grapes.",cid)
                npcHandler:doTopic(cid, 0)
             end
        end

        local keywords = {
        ["news"] = {response = "I hardly hear any news down here."},
        ["name"] = {response = "My name is Partos, but you can call me Party."},
        ["party"] = {response = "Yeah! Come in and let's have a party."},
        ["thais"] = {response = "I love the city. I just wish I could see some other part of it now and then."},
        ["city"] = {response = "I love the city. I just wish I could see some other part of it now and then."},
        ["tibia"] = {response = "I love this world. I just wish I could see some other part of it now and then."},
        ["how are you"] = {response = "I am great! Free food, free room, and now and then someone coming down here to ask me silly questions. Wouldn't you love that, too?"},
        ["sell"] = {response = "I would like to sell you a secret, but I'm out of business for too long."},
        ["jail"] = {response = "You mean that's a JAIL? They told me it's the finest hotel in town! THAT explains the lousy roomservice!"},
        ["prison"] = {response = "You mean that's a JAIL? They told me it's the finest hotel in town! THAT explains the lousy roomservice!"},
        ["crime"] = {response = "Bah, I did nothing serious. I just had a little fun. In Ankrahmun nobody would have cared about these kind of things..."},
        ["criminal"] = {response = "Bah, I did nothing serious. I just had a little fun. In Ankrahmun nobody would have cared about these kind of things..."},
        ["god"] = {response = "The gods seldom show up down here, so don't ask me."},
        ["gods"] = {response = "The gods seldom show up down here, so don't ask me."},
        ["citizen"] = {response = "Rich enough to spare a little, don't you agree? Well, they didn't agree."},
        ["king"] = {response = "Yeah, a king is a man that can rob people by law, and not by night like me."},
        ["monster"] = {response = "At least I am safe from them down here."},
        ["gold"] = {response = "Gold got me in here."},
        ["money"] = {response = "Gold got me in here."},
        ["fight"] = {response = "Hey, most people I killed were even worse than me."},
        ["slay"] = {response = "Hey, most people I killed were even worse than me."},
        ["noodles"] = {response = "I bet one could get some fine ransom, if he dognappes this furball."},
        ["quentin"] = {response = "By the gods, he visits us 'criminals' now and then to 'save' us. Who is going to save me from this boredom on two legs?"},
        ["army"] = {response = "Bah, the king's pawns. I spit on them."},
        ["time"] = {response = "Geee, someone stole my watch. Bad company down here."},
        }

        for v in pairs(keywords) do
          if (msgcontains(msg, v)) then
               npcHandler:say(keywords[v].response, cid)
          end
        end
        return 1
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, PartosSayCallback)
npcHandler:addModule(FocusModule:new())