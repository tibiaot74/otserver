local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
NpcSystem.parseParameters(npcHandler)

local poison = createConditionObject(CONDITION_POISON)
addDamageCondition(poison, 15, 2000, -1)

npcHandler:setMessage(MESSAGE_GREET, "Welcome to the Jolly Axeman, |PLAYERNAME|. Have a good time!.")
npcHandler:setMessage(MESSAGE_PLACEDINQUEUE, "Shut up |PLAYERNAME|. Busy. You wait!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "HEY! You lousy....!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Yeah, bye")


function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end
 
function MaryzaSayCallback (cid, type, msg)

    if (msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'hiho')) and (msgcontains(msg:lower(),'maryza')) and (npcHandlerfocus == 0) then
           npcHandler:greet(cid)
    elseif (msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'hiho')) and (msgcontains(msg:lower(),'maryza')) and (npcHandlerfocus > 0) and (npcHandlerfocus ~= cid) then
           npcHandler:onGreet(cid)
    elseif (msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'hiho')) and (npcHandlerfocus ~= cid) then
           npcHandler:say("Talking to me?")
    elseif (msgcontains(msg:lower(),'bye') or msgcontains(msg:lower(),'farewell')) then
           npcHandler:onFarewell(cid)
    elseif(msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'hiho')) and (msgcontains(msg:lower(),'jimbin')) and (npcHandlerfocus > 0) then
           npcHandler:onFarewell(cid)

    elseif(msgcontains(msg:lower(),'jimbin')) then
           npcHandler:say("I am so proud of him. In drinking, he's second only to our mighty general.")
 
----missions---

        elseif(msgcontains(msg:lower(), 'cookbook') or msgcontains(msg:lower(), 'book')) then
                  if (getPlayerStorageValue(cid, 1004) == 1) then
                        npcHandler:say("I have but a few copies, anyway.",cid)
                        npcHandlerfocus = 0
                  else
                        npcHandler:say("The cook book of the famous dwarfish kitchen. You're lucky. I have a few copies on sale. Do you like one for 150 gold?",cid)
                        npcHandlerfocus = 1
                  end
       elseif(msgcontains(msg:lower(),'yes')) and (npcHandlerfocus == 1) then
                  if (getPlayerStorageValue(cid, 1004) ~= 1) then
                        setPlayerStorageValue(cid, 1004, 1) 
						doPlayerRemoveMoney(cid, 150)
                        doPlayerAddItem(cid, 2347, 1)                         
                        npcHandler:say("Here you are. Happy cooking!",cid)
                        npcHandlerfocus = 2
                  else
                        npcHandler:say("No gold, no sale, that's it", cid)
                        npcHandlerfocus = 0
                  end
       elseif (msgcontains(msg, {"bloody","mary"})) then
                        doPlayerAddItem(cid,2228,1)
                        doTargetCombatCondition(0, cid, poison, 0)
                        doSendMagicEffect(getThingPos(getNpcCid()), 2)
                        npcHandler:say("YOU &/$#@!", cid)
                        npcHandlerfocus = 0
       end
local keywords = {
["buy"] = {response = "I can offer you beer ... or water if you are sick."},
["job"] = {response = "I'm the cook of the Jolly Axeman."},
["tavern"] = {response = "I'm the cook of the Jolly Axeman."},
["jimbin"] = {response = "I am so proud of him. In drinking, he's second only to our mighty general."},
["name"] = {response = "I am Maryza Firehand, daughter of Earth, from the Molten Rock."},
["time"] = {response = "To busy, ask my husband."},
["king"] = {response = "Don't like these upper cave guys."},
["army"] = {response = "We could better feed some dragons instead of these fools."},
["ferumbras"] = {response = "Heard that's what the humans call one of their boggiemen."},
["general"] = {response = "A fine drinker and strategist. Wastes his skill with these idiots of the army. What a shame."},
["excalibug"] = {response = "Would slice a dragon or two for steaks if i'd get it."},
["tark"] = {response = "He loved my dragonsteaks. Heard he died by a cave in while fighting drags in the Plains of Havoc."},
["thais"] = {response = "Puny town for puny guys."},
["tibia"] = {response = "We don't care much about outsiders anymore."},
["carlin"] = {response = "Don't like it, has an elfish touch, ye know?"},
["news"] = {response = "The boys of the Savage Axe at the bridge are running wild in these days."},
["rumors"] = {response = "The boys of the Savage Axe at the bridge are running wild in these days."},
["buy"] = {response = "I can offer you some food if ye like."},
["do you sell"] = {response = "I can offer you some food if ye like."},
["do you have"] = {response = "I can offer you some food if ye like."},
["food"] = {response = "I sell normal and brown bread, meat, ham, cookies, rolls, and cheese made of mushrooms."},
}
  for v in pairs(keywords) do
    if (msgcontains(msg, v)) then
        npcHandler:say(keywords[v].response, cid)
    end
  end
  return 1
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, MaryzaSayCallback)