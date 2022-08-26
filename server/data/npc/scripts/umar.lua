local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local npcHandlerfocus = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
NpcSystem.parseParameters(npcHandler)

npcHandler:setMessage(MESSAGE_FAREWELL, "<salutes>Aaaa -tention!")

function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                                              npcHandler:onThink()    end

function UmarGreetCallback(cid)
 if (getPlayerStorageValue(cid, 1002) == 1) then
     npcHandler:say(""..getPlayerName(cid).."! How's it going these days?", cid)
 else
     npcHandler:say("Whoa? You know the word! Amazing, "..getPlayerName(cid).."! ...", cid, 1000)
     npcHandler:say("I should go and tell Fa'hradin. ...", cid, 7000)
     npcHandler:say("Well. Why are you here anyway, "..getPlayerName(cid).."?", cid, 12000)
 end
 npcHandlerfocus = 0
 return 1
end
 
function UmarSayCallback (cid, type, msg)

    if (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings')) and (npcHandlerfocus == 0) and (getPlayerStorageValue(cid, 1002) == 1) then
           npcHandler:greet(cid)
           UmarGreetCallback(cid)

    elseif (msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings')) and (npcHandlerfocus == 0) and ((getPlayerStorageValue(cid, 1000) ~= 1) or (getPlayerStorageValue(cid, 1000) == 1)) then
           npcHandler:say("Whoa! A human! This is no place for you, "..getPlayerName(cid)..". ...", cid, 1000)
           npcHandler:say("Go and play somewhere else.", cid, 7000)

    elseif (msgcontains(msg:lower(),"djanni'hah")) and (npcHandlerfocus == 0) and (getPlayerStorageValue(cid, 1000) == 1) then
           npcHandler:greet(cid)

    elseif (msgcontains(msg:lower(),"djanni'hah")) and (npcHandlerfocus == 0) and (getPlayerStorageValue(cid, 1000) ~= 1) then
           npcHandler:say("Hahahaha! ...", cid, 1000)
           npcHandler:say(""..getPlayerName(cid)..", that almost sounded like the word of greeting. Humans - cute they are!", cid, 5000)

    elseif (msgcontains(msg:lower(),"djanni'hah") or msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings')) and (npcHandlerfocus > 0) and (npcHandlerfocus ~= cid) and (getPlayerStorageValue(cid, 1002) == 1) then
           npcHandler:say('Hey '.. getPlayerName(cid) ..'! Please wait a second!')
        if(not npcHandler.queue:isInQueue(cid)) then
           npcHandler.queue:push(cid)
        end

    elseif (msgcontains(msg:lower(),'hi') or msgcontains(msg:lower(),'hello') or msgcontains(msg:lower(),'greetings')) and (npcHandlerfocus > 0) and (npcHandlerfocus ~= cid) and ((getPlayerStorageValue(cid, 1000) == 1) or (getPlayerStorageValue(cid, 1000) ~= 1)) then
           npcHandler:say("Another human! This is no place for you, "..getPlayerName(cid)..". ...", cid, 1000)
           npcHandler:say("Go and play somewhere else.", cid, 7000)

    elseif (msgcontains(msg:lower(),"djanni'hah")) and (npcHandlerfocus > 0) and (npcHandlerfocus ~= cid) and (getPlayerStorageValue(cid, 1000) == 1) then
           npcHandler:say('Yikes! Another human? Where did you come from? Well, ehm - if you could please wait a second, '.. getPlayerName(cid) ..'?')
        if(not npcHandler.queue:isInQueue(cid)) then
            npcHandler.queue:push(cid)
        end

    elseif (msgcontains(msg:lower(),"djanni'hah")) and (npcHandlerfocus > 0) and (npcHandlerfocus ~= cid) and (getPlayerStorageValue(cid, 1000) ~= 1) then
           npcHandler:say('That almost sounded like the word of greeting, '.. getPlayerName(cid) ..'. Humans - cute they are!')

    elseif (msgcontains(msg:lower(),'bye') or msgcontains(msg:lower(),'farewell')) then
           npcHandler:say("<salutes>Aaaa -tention!")
           npcHandler:onFarewell(cid)

-----missions----
 
  elseif(msgcontains(msg:lower(),'pass') or msgcontains(msg:lower(),'door') or msgcontains(msg:lower(),'enter') or msgcontains(msg:lower(),'join') or msgcontains(msg:lower(),'follow')) then
      if (getPlayerStorageValue(cid, 1002) ~= 1) then
        if(getPlayerStorageValue(cid, 1023) ~= 1) then
           npcHandlerfocus = 1
           npcHandler:say("If you want to enter our fortress you have to become one of us and fight the Efreet. ...", cid, 1000)
           npcHandler:say("So, are you willing to do so?", cid, 9000)
        else
           npcHandler:say("I don't believe you! You better go now.", cid)
        end
      else
           npcHandler:say("You allready have the permission to enter Ashta'daramai.",cid)
           npcHandlerfocus = 0
      end

   elseif(msgcontains(msg:lower(),'yes')) and (npcHandlerfocus == 1) then
           npcHandler:say("Are you sure? You pledge loyalty to king Gabel, who is... you know. And you are willing to never ever set foot on Efreets'territory, unless you want to kill them? Yes?",cid)
           npcHandlerfocus = 2

   elseif(msgcontains(msg:lower(),'yes')) and (npcHandlerfocus == 2) then
           setPlayerStorageValue(cid, 1002, 1)    
           npcHandlerfocus = 0       
           npcHandler:say("Oh. Ok. Welcome then. You may pass. ...", cid, 1000)
           npcHandler:say("And don't forget to kill some Efreets, now and then.", cid, 6500)

   elseif(npcHandlerfocus == 1) or (npcHandlerfocus == 2) then
           npcHandler:say("This isn't your war anyway, human.",cid)
           npcHandlerfocus = 0

   elseif (msgcontains(msg:lower(),"king")) then
           npcHandler:say("Okay, let's do this again. Gabel says he isn't a king, but he acts like one, which makes him one anyway - right? ...", cid, 1000)
           npcHandler:say("But you know, he does not really act like one, either. I mean, he does give us orders and all that, and we obey sure enough, but it's not that we have to, I mean, technically speaking. ...", cid, 10000)
           npcHandler:say("I mean - I don't know what would happen if anybody would not follow his orders for a change. After all he is no longer a king, right? ...", cid, 22500)
           npcHandler:say("But then I don't want to be the first one to find out what happens if you disobey, so I always do as I'm told. ...", cid, 32500)
           npcHandler:say("Which means I do not really know whether or not he is king. <sighs> Things were so much easier when Gabel still said he was king. Matters were so much clearer then.", cid, 41500)

   elseif (msgcontains(msg:lower(),"dwarf")) then
           npcHandler:say("Yes. Consider this: Dwarves live in the mountains. So do I. And just like dwarves I really like gold. But most of all, dwarves like beer. ...", cid, 1000)
           npcHandler:say("Isn't that amazing? I think that is more than a coincidence. You know - perhaps I am a reincarnated dwarf or something. You never know.", cid, 11500)

   elseif (msgcontains(msg:lower(),"human")) then
           npcHandler:say("See. That's another problem. In the past, it was us against you - djinn against humans. But one day this guy came along, and all of a sudden things were so much more complicated. ...", cid, 1000)
           npcHandler:say("All of a sudden there was good djinn and evil djinn, and good humans and evil humans. Everything got so damn complicated. ...", cid, 13500)
           npcHandler:say("All of a sudden we did not know who to trust and who to fight. Should we join the evil djnn and battle all humans? ...", cid, 23000)
           npcHandler:say("Or was it smarter to ally with the good humans and to battle the bad djinn? ...", cid, 32200)
           npcHandler:say("Perhaps we should join nobody and fight the bad humans? So many choices.", cid, 39500)

   elseif (msgcontains(msg:lower(),"zathroth")) then
           npcHandler:say("Zathroth is not very popular among the djinn because it is said that he abandoned us even though he was our creator. Legend has it that we failed to meet his expectations. ...", cid, 1000)
           npcHandler:say("Fa'hradin once said that all djinn are oedipally traumatised because of this, but I have no idea what he is talking about.", cid, 13000)

   elseif (msgcontains(msg:lower(),"kha'labal")) then
           npcHandler:say("Ah yes - the desert. I still remember how beautiful that land was back in the days before the war. ...", cid, 1000)
           npcHandler:say("A land full of song and bliss it was - a veritable paradise. Fa'hradin once said its destruction was a supreme example of the transitoriness of all things mortal. ...", cid, 9500)
           npcHandler:say("I am not sure I agree because I don't know what 'transitoriness' means.", cid, 21000)

   elseif (msgcontains(msg:lower(),"melchior")) then
           npcHandler:say("That name rings a bell. A trader from Ankrahmun... or was it Darashia? I remember him and his mule. He used to come up here quite often to do business with Haroun. ...", cid, 1000)
           npcHandler:say("Lately I haven't seen him around, though. I think last time he came here was about 20 years ago.", cid, 13000)
   end

        local keywords = {
        ["name"] = {response = "I am Umar. Pleased to meet you!"},
        ["job"] = {response = "I am the gatekeeper of Ashta'daramai. That's what Gabel told me to do. You know - keeping the courtyard clean, getting rid of salesmen, keeping Efreet scum out... that kind of thing. But in my spare time I work as a part-time philosopher."},
        ["philosopher"] = {response = "Yes. Comes with the job. You see - here I am, sitting on the same chair all day and staring at the same blank wall. So what happens is that my mind starts wandering. And, you know, I start thinking. You know - about all kinds of things."},
        ["things"] = {response = "Yes. About the world and the gods and all that. And about girls. Yes, about girls, mostly."},
        ["girls"] = {response = "You did not know there are female djinns, did you? That's because they are quite rare. They are the greatest treasures of our race, and we guard them jealously."},
        ["gabel"] = {response = "He is our king and leader. Well, he isn't a king, you know. I mean, from a technical point of view he is, but he does not wear a crown or anything, and he says he isn't one, so even though he is one he isn't. Right?"},
        ["djinn"] = {response = "Well, I am a djinn, but only as far as my physical aspect is concerned. As far as my way of thinking is concerned I think I might actually be somebody else. You now - not even a djinn. In fact, I think I might be a dwarf."},
        ["efreet"] = {response = "I have thought long and hard about this and I have come to the conclusion that all Efreet are scum."},
        ["ashta'daramai"] = {response = "This place is the Marids' safe haven. No enemy has ever managed to take this fortress by assault, and we will see to it that it stays this way."},
        ["mal'ouquah"] = {response = "That is the Efreets fortress. I have never seen it, but I'm sure it can't compare to this place."},
        ["marid"] = {response = "That's us. I suppose we are the good guys in this war. Although good is relative, of course. So let's say, we are relatively good. Depends on the point of view, really."},
        ["war"] = {response = "We had thought the war was over for good when Malor was finally imprisoned. That little creep is as obstinate as... as... well, as a really obstinate djinn."},
        ["malor"] = {response = "Malor is evil. I mean - really evil. Things used to be much better when he was still locked away in that lamp."},
        ["tibia"] = {response = "Tibia is a beautiful world. Not that I see much of it, staring at this wall night and day."},
        ["world"] = {response = "Tibia is a beautiful world. Not that I see much of it, staring at this wall night and day."},
        ["gods"] = {response = "I have not made my mind up what to think about the gods yet. I am still struggling with Daraman's teachings."},
        ["daraman"] = {response = "Daraman has changed our lives. I mean, we were not stupid or anything before he came, but still it was different. Fa'hradin says that while Zathroth made us intelligent, Daraman made us think."},
        ["darashia"] = {response = "They say Darashia is a beautiful human city somewhere to the north. I would really love to see it, but I can't abandon my post."},
        ["edron"] = {response = "I understand the humans have founded some beautiful cities. I would like to see them, but as long as I have to stay here that won't happen. Which means I will not go anywhere as long as the war goes on."},
        ["thais"] = {response = "I understand the humans have founded some beautiful cities. I would like to see them, but as long as I have to stay here that won't happen. Which means I will not go anywhere as long as the war goes on."},
        ["venore"] = {response = "I understand the humans have founded some beautiful cities. I would like to see them, but as long as I have to stay here that won't happen. Which means I will not go anywhere as long as the war goes on."},
        ["kazordoon"] = {response = "I understand the humans have founded some beautiful cities. I would like to see them, but as long as I have to stay here that won't happen. Which means I will not go anywhere as long as the war goes on."},
        ["carlin"] = {response = "I understand the humans have founded some beautiful cities. I would like to see them, but as long as I have to stay here that won't happen. Which means I will not go anywhere as long as the war goes on."},
        ["ab'dendriel"] = {response = "I understand the humans have founded some beautiful cities. I would like to see them, but as long as I have to stay here that won't happen. Which means I will not go anywhere as long as the war goes on."},
        ["ankrahmun"] = {response = "I was there, long ago. We had a garrison based in Ankrahmun during the early phases of the war. That was before the whole plains of the Kha'labal were set on fire."},
        ["scarab"] = {response = "I don't care whether or not they are special animals. None of that creeping vermin will enter Ashta'daramai as long as I am here!"},
        ["pharaoh"] = {response = "They say the new pharaoh is mad!"},
        ["palace"] = {response = "I remember the palace. It was a beautiful place. Ah... those were happy days."},
        ["temple"] = {response = "In these heretic times the priests at Ankrahmun's temple are devoted to the teachings of that pompous pharaoh."},
        ["ascension"] = {response = "Apparently that is what the followers of the pharaoh are striving for. It has to do with that pharaoh's teachings."},
        ["rah"] = {response = "That's just some heretic drivel. Don't ask me about it."},
        ["uthun"] = {response = "That's just some heretic drivel. Don't ask me about it."},
        ["akh"] = {response = "That's just some heretic drivel. Don't ask me about it."},
        ["kha'zeel"] = {response = "When I look up from my wall, what do I see? Huge, forbidding mountains! No wonder I feel claustrophobic."},
        ["djema"] = {response = "You know her? She's a human like you. I like her lots because she often comes down here for a chat. Nobody else around here does that."},
        ["bo'ques"] = {response = "That fat old cook. I like his food, but I find him a bit boring. Food and cooking is all he ever talks about."},
        ["alesar"] = {response = "Ah. That guy. He was one of us, a Marid, but he left long ago. I have no idea why. Rumours and hearsay is all I ever get."},
        ["fa'hradin"] = {response = "Fa'hradin is a powerful wizard and the smartest djinn I know. I love talking to him because there is so much he can teach me, but he rarely has time for me."},
        ["lamp"] = {response = "Djinns sleep in lamps. I don't know what is so special about that."},
        }

        for v in pairs(keywords) do
          if (msgcontains(msg, v)) then
               npcHandler:say(keywords[v].response, cid)
               npcHandlerfocus = 0
          end
        end
    return 1
end

npcHandler:setCallback(CALLBACK_GREET, UmarGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, UmarSayCallback)