local keywordHandler = KeywordHandler:new()
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local fire = createConditionObject(CONDITION_FIRE)
addDamageCondition(fire, 10, 2000, -10)

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end

function ShaunaSayCallback (cid, type, msg)
  if(not npcHandler:isFocused(cid)) then
     return 0
  end

	if(msgcontains(msg:lower(),"fuck")
        or msgcontains(msg:lower(),"idiot")
        or msgcontains(msg:lower(),"asshole")
        or msgcontains(msg:lower(),"ass")
        or msgcontains(msg:lower(),"fag")
        or msgcontains(msg:lower(),"stupid")
        or msgcontains(msg:lower(),"tyrant")
        or msgcontains(msg:lower(),"lunatic")
        or msgcontains(msg:lower(),"shit")) then
	   npcHandler:say("Take this!")
           doTargetCombatCondition(0, cid, fire, 4)
           doSendMagicEffect(getThingPos(getNpcCid()), CONST_ME_YELLOW_RINGS)
       elseif(msgcontains(msg:lower(),"waterpipe") or msgcontains(msg:lower(),"pipe")) then
           npcHandler:say("Oh, there's a waterpipe in one of my cells? ...", cid, 1000)
           npcHandler:say("I guess my last prisoner forgot it there.", cid, 6500)
       elseif(msgcontains(msg:lower(),"prisoner")) then
           npcHandler:say("My last prisoner? Hmm. ...", cid,1000)
           npcHandler:say("I think he was some guy from Darama. Can't remember his name. ...", cid, 5500)
           npcHandler:say("He was here just for one night, because he got drunk and annoyed our citizens. ...", cid, 12000)
           npcHandler:say("Obviously he wasn't pleased with this place, because he headed for Thais the next day. ...", cid, 19500)
           npcHandler:say("Something tells me that he won't stay out of trouble for too long.", cid, 27500)
       elseif(msgcontains(msg:lower(),"sell")) then
           npcHandler:say("Would you like to buy the general key to the town?")
       elseif(msgcontains(msg:lower(),"bye")) then
           npcHandler:say("LONG LIVE THE QUEEN!")
       end

        local keywords = {
		["hi"] = {response = "Howdy!."},
        ["news"] = {response = "No news are good news."},
        ["queen"] = {response = "HAIL TO QUEEN ELOISE!"},
        ["leader"] = {response = "HAIL TO QUEEN ELOISE!"},
        ["job"] = {response = "What do you think? I am the sheriff of Carlin."},
        ["how are you"] = {response = "Just fine."},
        ["army"] = {response = "If they make trouble, I'll put them behind bars like all others."},
        ["guard"] = {response = "If they make trouble, I'll put them behind bars like all others."},
        ["general"] = {response = "The Bonecrusher family is ideally suited for military jobs."},
        ["bonecrusher"] = {response = "The Bonecrusher family is ideally suited for military jobs."},
        ["enemies"] = {response = "If you have a crime to report and clues, then do it, but dont waste my time."},
        ["enemy"] = {response = "If you have a crime to report and clues, then do it, but dont waste my time."},
        ["criminal"] = {response = "If you have a crime to report and clues, then do it, but dont waste my time."},
        ["murderer"] = {response = "If you have a crime to report and clues, then do it, but dont waste my time."},
        ["castle"] = {response = "The castle is one of the safest places in Carlin."},
        ["subject"] = {response = "Our people are fine and peaceful."},
        ["tbi"] = {response = "I bet they spy on us... not my business, however."},
        ["todd"] = {response = "I scared this bigmouth so much that he left the town by night. HO, HO, HO!"},
        ["city"] = {response = "The city is is a peacful place, and it's up to me to keep it this way."},
        ["hain"] = {response = "He is the guy responsible to keep the sewers working. Someone has to do such kind of jobs. I can't handle all the garbage of the city myself."},
        ["rowenna"] = {response = "Rowenna is one of our local smiths. When you look for weapons, look for Rowenna."},
        ["weapon"] = {response = "Rowenna is one of our local smiths. When you look for weapons, look for Rowenna."},
        ["cornelia"] = {response = "Cornelia is one of our local smiths. When you look for armor, look for Cornelia."},
        ["armor"] = {response = "Cornelia is one of our local smiths. When you look for armor, look for Cornelia."},
        ["legola"] = {response = "She has the sharpest eye in the region, I'd say."},
        ["padreia"] = {response = "Her peacefulness is sometimes near stupidity."},
        ["god"] = {response = "I worship Banor of course."},
        ["banor"] = {response = "For me, he's the god of justice."},
        ["zathroth"] = {response = "His cult is forbidden in our town."},
        ["brog"] = {response = "Wouldn't wonder if some males worship him secretly. HO, HO, HO!"},
        ["monster"] = {response = "I deal more with the human mosters, you know? HO, HO, HO!"},
        ["excalibug"] = {response = "Would certainly make a good butterknife. HO, HO, HO!"},
        ["rebellion"] = {response = "The only thing that rebels here now and then is the stomach of a male after trying to make illegal alcohol. HO, HO, HO!"},
        ["alcohol"] = {response = "For obvious reasons it's forbidden in our city."},
        }

        for v in pairs(keywords) do
          if (msgcontains(msg, v)) then
               npcHandler:say(keywords[v].response, cid)
          end
        end
	return TRUE
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, ShaunaSayCallback)
npcHandler:addModule(FocusModule:new())