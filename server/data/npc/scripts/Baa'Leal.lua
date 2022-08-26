local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local talkState = {}
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

local fire = createConditionObject(CONDITION_FIRE)
addDamageCondition(fire, 150, 4000, -10)

npcHandler:setMessage(MESSAGE_GREET, "You are still alive, |PLAYERNAME|? Well, what do you want?")
npcHandler:setMessage(MESSAGE_PLACEDINQUEUE, "Can't you see I am already talking to somebody here, |PLAYERNAME|? You civilians don't understand the concept of discipline at all, do you!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Hail Malor!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Stand down, soldier!")

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end
 
function BaalealSayCallback (cid, type, msg)
if (getPlayerStorageValue(cid, 1023) ~= 1) then
   return 0
end

    if (msgcontains(msg:lower(),"djanni'hah")) and (getPlayerStorageValue(cid, 2360) ~= 1) then
           npcHandler:say('You know the code human! Very well then... What do you want, '.. getPlayerName(cid) ..'?')
           setPlayerStorageValue(cid, 2360, 1)
           npcHandler.focus = cid
    elseif (msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings') or msgcontains(msg:lower(),'hi')) and (getPlayerStorageValue(cid, 2360) ~= 1) then
           setPlayerStorageValue(cid, 2360, 1)
           npcHandler:say('A human! TAKE THIS!')
           doTargetCombatCondition(0, cid, fire, 4)
           npcHandler:Idle(cid, 5)
    elseif (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings') or msgcontains(msg:lower(),'hi')) and (getPlayerStorageValue(cid, 2360) == 1) then
           npcHandler:greet(cid)

    elseif (msgcontains(msg:lower(),"djanni'hah")) and (getPlayerStorageValue(cid, 2360) ~= 1) then
           npcHandler:onGreet(cid)
           setPlayerStorageValue(cid, 2360, 1)
    elseif (msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings') or msgcontains(msg:lower(),'hi')) and (getPlayerStorageValue(cid, 2360) ~= 1) then
           setPlayerStorageValue(cid, 2360, 1)
           npcHandler:say('A human! TAKE THIS!')
           doTargetCombatCondition(0, cid, fire, 4)
        if(not npcHandler.queue:isInQueue(cid)) then
           npcHandler.queue:push(cid)
        end
    elseif (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings') or msgcontains(msg:lower(),'hi')) and (getPlayerStorageValue(cid, 2360) == 1) then
           npcHandler:onGreet(cid)

    elseif (msgcontains(msg:lower(),'bye') or msgcontains(msg:lower(),'farewell')) then
           npcHandler:onFarewell(cid)

-----missions----

        elseif(msgcontains(msg:lower(),"mission") or msgcontains(msg:lower(),"work") or msgcontains(msg:lower(),"operation")) and (getPlayerStorageValue(cid, 1025) ~= 1) then
                        npcHandler:say("Each mission and operation is a crucial step towards our victory! ...", cid, 1000)
                        npcHandler:say("Now that we speak of it ...", cid, 8000)
                        npcHandler:say("Since you are no djinn, there is something you could help us with. Are you interested, human?", cid, 13000)
        elseif(msgcontains(msg:lower(),"yes")) and (getPlayerStorageValue(cid, 1025) ~= 1) then
                        setPlayerStorageValue(cid, 1025, 1) 
                        npcHandler:say("Well ... All right. You may only be a human, but you do seem to have the right spirit. ...", cid, 1000)
                        npcHandler:say("Listen! Since our base of operations is set in this isolated spot we depend on supplies from outside. These supplies are crucial for us to win the war. ...", cid, 9000)
                        npcHandler:say("Unfortunately, it has happened that some of our supplies have disappeared on their way to this fortress. At first we thought it was the Marid, but intelligence reports suggest a different explanation. ...", cid, 20000)
                        npcHandler:say("We now believe that a human was behind the theft! ...", cid, 33500)
                        npcHandler:say("His identity is still unknown but we have been told that the thief fled to the human settlement called Carlin. I want you to find him and report back to me. Nobody messes with the Efreet and lives to tell the tale! ...", cid, 39500)
                        npcHandler:say("Now go! Travel to the northern city Carlin! Keep your eyes open and look around for something that might give you a clue!", cid, 53500)
        elseif(msgcontains(msg:lower(),"mission") or msgcontains(msg:lower(),"work") or msgcontains(msg:lower(),"thief") or msgcontains(msg:lower(),"operation")) and (getPlayerStorageValue(cid, 1025) == 1) then
                if (getPlayerStorageValue(cid, 1029) ~= 1) then                        
                        npcHandler:say("Did you find the thief of our supplies?",cid)
                else
                        npcHandler:say("Did you already talk to Alesar? He has another mission for you.", cid)
                        talkState[talkUser] = 0
                end
        elseif(msgcontains(msg:lower(),"yes"))  and (getPlayerStorageValue(cid, 1025) == 1) then
                if (getPlayerStorageValue(cid, 1026) == 1) then
                        npcHandler:say("Finally! What is his name then?",cid)
                        talkState[talkUser] = 3
                else
                        npcHandler:say("Hmmm... I don't think so. Return to Carlin and continue your search.",cid)
                end
        elseif(msgcontains(msg:lower(),"partos"))  and (getPlayerStorageValue(cid, 1029) ~= 1) then
                        setPlayerStorageValue(cid, 1029, 1)
                        doPlayerAddItem(cid,2152,6)
                        npcHandler:say("You found the thief! Excellent work, soldier! You are doing well - for a human, that is. Here - take this as a reward. ...", cid, 1000)
                        npcHandler:say("Since you have proven to be a capable soldier, we have another mission for you. ...", cid, 10000)
                        npcHandler:say("If you are interested go to Alesar and ask him about it.", cid, 17000)

        elseif(msgcontains(msg:lower(),"hail malor"))  and (getPlayerStorageValue(cid, 1029) == 1) then
                        npcHandler:say("Hail to our great leader!", cid)
        elseif (talkState[talkUser] == 2) then
                        npcHandler:say("Then go to Carlin and search for him! Look for something that might give you a clue!", cid)
                        talkState[talkUser] = 0
        elseif(msgcontains(msg:lower(),"job")) then
                        npcHandler:say("I am commander-in-chief of the armed forces of the UDLA, all branches of service. ...", cid, 1000)
                        npcHandler:say("Hence I'm responsible for all operations in the enemy's territory.", cid, 8500)
        elseif(msgcontains(msg:lower(),"udla")) then
                        npcHandler:say("Yes. The United Djinn Liberation Army. ...", cid, 1000)
                        npcHandler:say("The title has been given to our valiant armed forces in order to stress both the revolutionary focus of our agenda and the universalist nature of our political approach. ...", cid, 6500)
                        npcHandler:say("Hence I'm responsible for all operations in the enemy's territory.", cid, 18500)
        elseif(msgcontains(msg:lower(),"daraman")) then
                        npcHandler:say("Damn that liberal peacenik, that treacherous mealy-mouthed double-faced good-for-nothing surrender monkey! ...", cid, 1000)
                        npcHandler:say("He has infected this proud people's minds with his peace-for-all blabber.", cid, 10000)
        elseif(msgcontains(msg:lower(),"darashia")) then
                        npcHandler:say("The humans living in the northern deserts used to be nomads. Even though they are just humans they used to be respectable fighters. ...", cid, 1000)
                        npcHandler:say("However, now they are living in this city they have grown fat and decadent. They will be easy prey.", cid, 11000)
        elseif(msgcontains(msg:lower(),"ankrahmun")) then
                        npcHandler:say("That old city has some impressive defensive structures. But I swear I will bring it down one day... I have a cunning plan already! ...", cid, 1000)
                        npcHandler:say("I am thinking of a huge wooden camel.", cid, 11000)
        elseif(msgcontains(msg:lower(),"war")) then
                        npcHandler:say("War is the father of things, and I live and breathe it. Ok, it's a tad bit silly that we are forced to fight against our own kind, but as a good soldier I will do my duty! <salutes> ...", cid, 1000)
                        npcHandler:say("And if I hear anybody talking about 'peace' he will be court-martialled and summarily executed! Or vice versa!", cid, 13500)
        end

        local keywords = {
        ["name"] = {response = "I'm general Baa'leal. What do you want in Mal'ouquah?"},
        ["general"] = {response = "I'm general Baa'leal. What do you want in Mal'ouquah?"},
        ["baa'leal"] = {response = "That is GENERAL Baa'leal for you, human."},
        ["mal'ouquah"] = {response = "At the moment Mal'ouquah is our headquarter. However, I am already working on a cunning plan to move our base of operations deep into the enemy's territory."},
        ["ashta'daramai"] = {response = "Ashta'daramai is the enemy's base of operations. I am looking forward to the moment when we raise our flag there!"},
        ["gabel"] = {response = "He is weak. Much too weak to be our leader."},
        ["king"] = {response = "The UDLA does not serve a king because there isn't any. Of course, that is bound to change."},
        ["djinn"] = {response = "We are a race of warriors! We Efreets are destined to rule and to conquer."},
        ["efreet"] = {response = "We are the true djinn! We do not live in denial of our true nature like those damn liberals, the Marid."},
        ["marid"] = {response = "Nothing but a bunch of mealy-mouthed, mollycoddled wimps and milksops the lot of them. They may be superior in numbers, but we will win anyway because of our superior strategic thinking."},
        ["malor"] = {response = "Hail to our great leader."},
        ["human"] = {response = "No offence, but your race is weak. You lack both the physical strength and the true warrior spirit. And worst of all, you have no strategic thinking."},
        ["zathroth"] = {response = "I understand he created us. Must have been a great general."},
        ["tibia"] = {response = "It is our mission to achieve total and decisive dominion of this world within two years. Well perhaps ... three. Always be realistic, that's what I say."},
        ["scarab"] = {response = "Impressive animals. I have this idea of training them as battle steeds. Imagine this: Djinns mounted on scarabs! With a battalion of those I would crush the enemy in the blink of an eye!"},
        ["edron"] = {response = "They say the humans have built some big cities over there. I am looking forward to see them burn."},
        ["thais"] = {response = "They say the humans have built some big cities over there. I am looking forward to see them burn."},
        ["venore"] = {response = "They say the humans have built some big cities over there. I am looking forward to see them burn."},
        ["kazordoon"] = {response = "They say the humans have built some big cities over there. I am looking forward to see them burn."},
        ["carlin"] = {response = "They say the humans have built some big cities over there. I am looking forward to see them burn."},
        ["ab'dendriel"] = {response = "They say the humans have built some big cities over there. I am looking forward to see them burn."},
        ["pharaoh"] = {response = "Ankrahmun's pharaoh apparently believes himself to be some sort of god. Ah well. A solid blow with my scimitar will bring him back to earth soon enough!"},
        ["palace"] = {response = "I suppose the palace is where the pharaoh resides. I have a distinct feeling I shall see it burn rather soon."},
        ["ascension"] = {response = "Apparently, ascension is what the followers of the pharaoh are after. No idea what exactly that is, though."},
        ["rah"] = {response = "Spare me that pseudo-theological hogwash."},
        ["uthun"] = {response = "Spare me that pseudo-theological hogwash."},
        ["akh"] = {response = "Spare me that pseudo-theological hogwash."},
        ["kha'zeel"] = {response = "It was an excellent idea to build our headquarter in the mountains of kha'zeel. Easy to defend, you know. Too bad the enemy had the same idea."},
        ["kha'labal"] = {response = "Kha'labal? Yes, it was me who devastated it. Couldn't leave it to the enemy, you see? We had to destroy it in order to save it!"},
        ["melchior"] = {response = "Melchior! I remember that greedy little civilian. I would have court-martialled him, but I suppose it is just as well the way it is."},
        ["alesar"] = {response = "Ah yes, Alesar! Excellent smith, that man!"},
        ["fa'hradin"] = {response = "He is Gabel's lieutenant and confidant. He is a powerful wizard, one has to admit that - and that's the only reason he is still alive. Without all his magical mumbo jumbo we would have long since won this war."},
        ["lamp"] = {response = "We sleep in those lamps. I like them - they are small and functional. We do not need cozy beds and fluffy duvets like decadent humans."},
        }

        for v in pairs(keywords) do
          if (msgcontains(msg, v)) and (npcHandler.focus == cid) then
               npcHandler:say(keywords[v].response, cid)
          end
        end
        return 1
end

npcHandler:setCallback(CALLBACK_GREET, BaalealGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, BaalealSayCallback)