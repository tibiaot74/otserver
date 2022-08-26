local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local talkState = {}
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function MelchiorGreetCallback(cid)
 talkState[talkUser] = 0
  if (getPlayerSex(cid) == 0) then
     npcHandler:setMessage(MESSAGE_GREET, "Welcome, |PLAYERNAME|! The lovely sound of your voice shines like a beam of light through my solitary darkness!")
  else
     npcHandler:setMessage(MESSAGE_GREET, "Greetings, |PLAYERNAME|. I do not see your face, but I can read a thousand things in your voice!")
  end
  return 1
end

function MelchiorSayCallback (cid, type, msg)
  if(not npcHandler:isFocused(cid)) then
     return 0
  end

    if(msgcontains(msg:lower(),"djanni'hah")) and (getPlayerStorageValue(cid, 1000) ~= 1) then
        setPlayerStorageValue(cid, 1000, 1)
        setPlayerStorageValue(cid, 1020, 1)
        npcHandler:say("You know the traditional djinn word of greeting DJANNI'HAH. Use it wisely!", cid)
    elseif(msgcontains(msg:lower(),"greeting") or msgcontains(msg:lower(),"word")) and (getPlayerStorageValue(cid, 1000) ~= 1) then
        setPlayerStorageValue(cid, 1000, 1)
        setPlayerStorageValue(cid, 1020, 1)
        npcHandler:say("The djinns have an ancient code of honour. This code includes a special concept of hospitality. Anybody who utters the word of greeting must not be attacked even if he is an enemy. Well, at least that is what the code says. ...", cid, 1000)
        npcHandler:say("I have found out, though, that this does not work at all times. There is no point to say the word of greeting to an enraged djinn. ...", cid, 16000)
        npcHandler:say("I can tell you the word of greeting if you're interested. It is DJANNI'HAH. Remember this word well, stranger. It might save your life one day. ...", cid, 26000)
        npcHandler:say("And keep in mind that you must choose sides in this conflict. You can only follow the Efreet or the Marid - once you have made your choice there is no way back. I know from experience that djinn do not tolerate double-crossing.", cid, 37000)

    elseif(msgcontains(msg:lower(),"fate") or msgcontains(msg:lower(),"story")) then
        npcHandler:say("Fate played a cruel trick on old Melchior. If you want me to, I can tell you my story - talking about one's grievances does help to ease the pain. So - would you like to hear my story?", cid)
        talkState[talkUser] = 1

    elseif(msgcontains(msg:lower(),"yes")) and (talkState[talkUser] == 1) then
        talkState[talkUser] = 0
        npcHandler:say("While my eyes were still of use to me I worked as a trader. I was not too successful, so I started looking for alternatives. Remembering some old nomad legends I went to explore the Kha'zeel. If only I'd never done that! ...", cid, 1000)
        npcHandler:say("After many days I met a weird creature - it was humanoid, but it was also much larger than any man, and it seemed to be only half-solid in a way. ...", cid, 15500)
        npcHandler:say("I was scared, but I remembered my grandfather's stories and I hailed the creature using the traditional djinn word of greeting. ...", cid, 26500)
        npcHandler:say("It worked. I managed to engage the djinn - for it was one sure enough - in a conversation. In fact, I even managed to come to an agreement with it. The djinns living there needed supplies, and I promised I would bring them some. ...", cid, 36500)
        npcHandler:say("A highly profitable business relationship ensued. Unfortunately, my greed grew every day, and it clouded my sense of judgement. ...", cid, 51500)
        npcHandler:say("Hearing that there was a second djinn fortress I travelled there. Those djinn, who called themselves the Marid, were friendly enough, and soon I traded with them as well. ...", cid, 61500)
        npcHandler:say("Unfortunately, it did not take the other djinn tribe, the Efreet, long to find out what I was up to. ...", cid, 74000)
        npcHandler:say("The Efreets' punishment was cruel: They blinded me and left me in the Kha'labal to die of thirst and exhaustion as food for the scarabs. But that was a favour I could not do them. ...", cid, 82500)
        npcHandler:say("I desperately struggled on and finally I was picked up by a caravan. They took me here, and now I am sort of stuck here in this city of the half-dead.", cid, 95000)

    elseif (talkState[talkUser] == 1) then
        talkState[talkUser] = 0
        npcHandler:say("As you wish, stranger.", cid)

    elseif(msgcontains(msg:lower(),"djinn")) then
        talkState[talkUser] = 0
        npcHandler:say("The djinns are a wondrous race. Swift and strong they are and larger, much larger than any man. ...", cid, 1000)
        npcHandler:say("And yet, djinns fit into tiny lamps, for they are but half solid creatures who can change into mist whenever they want to! It is as though they lived between the worlds, travelling hither and thither as they please. ...", cid, 9500)
        npcHandler:say("Little is known about their origin, but legend has it Zathroth himself, the dark master of magic, created them to some unknown evil purpose. ...", cid, 24000)
        npcHandler:say("But they are not evil, and perhaps that is why Zathroth eventually abandoned them! Djinns have independent minds and souls just like humans, and just like us they are forlorn creatures struggling to find their place in creation. ...", cid, 35000)
        npcHandler:say("They have fought a bitter, bitter war between themselves over this, a cataclysmic war that led them to the brink of self-destruction. ...", cid, 50000)
        npcHandler:say("Today they are few and far between, but they are still divided into two warring fractions, the gentle Marid and the cruel Efreet, and neither side will rest until the other is utterly defeated. ...", cid, 60000)
        npcHandler:say("If you ever meet a djinn make sure to say the word of greeting immediately. Otherwise he will simply ignore you or worse - if it is an Efreet he will kill you outright. ...", cid, 73000)
        npcHandler:say("And remember, once you decided to follow one group of djinns you can never switch sides, so choose well. No Efreet will ever deal with a follower of the Marid and vice versa.", cid, 85000)

    elseif(msgcontains(msg:lower(),"marid")) then
        talkState[talkUser] = 0
        npcHandler:say("The Marid are gentle, kind-hearted djinn, or at least that is how they act towards humans. However, they are quite reclusive, too. They will not talk to human unless he says the word of greeting first. ...", cid, 1000)
        npcHandler:say("And do not approach them if you are a follower of the Efreet - they are impossible to fool!", cid, 14500)

    elseif(msgcontains(msg:lower(),"efreet")) then
        talkState[talkUser] = 0
        npcHandler:say("Beware the Efreet, stranger! They hate all humans, and if they had their way all of us would be killed. If you meet one be sure to say the word of greeting immediately because otherwise you will be killed in a heartbeat. ...", cid, 1000)
        npcHandler:say("And do not approach them if you are a follower of the Marid - they are impossible to fool!", cid, 15500)

    elseif(msgcontains(msg:lower(),"kha'zeel")) then
        talkState[talkUser] = 0
        npcHandler:say("That is the name of the huge mountain range to the west of the great desert, the Kha'labal. That's where you will find the djinns' fortresses Ashta'daramai and Mal'ouquah. ...", cid, 1000)
        npcHandler:say("They say it was created by the gods as a vantage point from which they used watch their creation. I think it is true. I used to travel there often, and I swear I often felt the presence of something special, something... divine.", cid, 13000)

    elseif(msgcontains(msg:lower(),"kha'labal")) then
        talkState[talkUser] = 0
        npcHandler:say("Aaaah... The great desert. Legend has it that in ancient times it was a beautiful garden. I don't know if that is true, but I must admit I love it just the way it is. ...", cid, 1000)
        npcHandler:say("Travelling through that endless stretch of barren land always gave me a very special peace of mind.", cid, 13000)

    elseif(msgcontains(msg:lower(),"scarab")) then
        talkState[talkUser] = 0
        npcHandler:say("Those damn scavengers! I detest them. When I was stumbling through the desert, all blind and desperate, they followed me around. ...", cid, 1000)
        npcHandler:say("They watched my every step, waiting for me to give up and die. But I never did. Damn vermin! You'll have to eat somebody else!", cid, 11000)

    elseif(msgcontains(msg:lower(),"alesar")) then
        talkState[talkUser] = 0
        npcHandler:say("I know that name. He is a Marid. This djinn is one of the best smiths ever to live. You should see the scimitars he makes - hard as titanium yet light as a desert breeze. ...", cid, 1000)
        npcHandler:say("I kept on trying to get the Marid to sell one to me, but they never did. Too bad - I could have made a fortune.", cid, 13000)

    elseif(msgcontains(msg:lower(),"bo'ques")) then
        talkState[talkUser] = 0
        npcHandler:say("He is a cook - a djinn cook. A weird guy. Always used to ask me to procure some strange kind of ingredient or other for him. ...", cid, 1000)
        npcHandler:say("He made me laugh. Can you imagine what that looks like - a djinn wearing an enormous chef hat?", cid,10500)

    elseif(msgcontains(msg:lower(),"ankrahmun")) then
        talkState[talkUser] = 0
        npcHandler:say("I hate this city. Period. I would never have come here, but I haven't had much of a choice. The caravan that picked me up in the Kha'zeel was headed for this place, and I was glad enough they brought me here. ...", cid, 1000)
        npcHandler:say("But now I really wish I could leave. <whispers> These people and their ruler give me the creeps!", cid, 15000)
    end

  local keywords = {
  ["job"] = {response = "I am a poor beggar. I try to make a meagre living here since a cruel fate has left me a blind man."},
  ["gabel"] = {response = "He is the leader of the Marid! I have never met him myself, but everybody was full of praise for him back at Ashta daramai. The legend has it that it was him who introduced the djinns to wise Daramans teachings."},
  ["malor"] = {response = "Malor is the Efreets leader. He is perhaps not the strongest of all efreet, but his treachery and cruelty are certainly unrivalled. He was defeated a long, long time ago, but he was not killed!"},
  ["akh"] = {response = "In the pharaohs creed, this is what the physical body is called."},
  ["melchior"] = {response = "That is my name."},
  ["blind"] = {response = "Yes, I am. I was not born that way, but a cruel fate caused me to lose my eyesight."},
  ["name"] = {response = "My late father, may he rest in peace, chose to call me Melchior."},
  ["mal'ouquah"] = {response = "That is the Efreet's gloomy fortress, home of Malor, hidden high up in the Kha'zeel mountains. I used to go there often. Don't make the same mistake, stranger! I would love to think there is somebody who profited from the lesson I had to learn!"},
  ["ashta'daramai"] = {response = "Aah yes - the Marids' fortress. Perched high on the Kha'zeel, it is a marvel to behold. They say Gabel built it on the ruins of his original palace."},
  ["fa'hradin"] = {response = "I know that name. He is a Marid, right? I have met him once. He seemed pretty important."},
  ["baa'leal"] = {response = "Cursed be that djinn! It was him who blinded me, and I bet casting me out into the Kha'labal was his idea, too. Believe me, I would try to kill him if only I could."},
  ["haroun"] = {response = "A Marid trader. I have often had dealings with him. He drove me mad because he never accepted any haggling, but then he never ever tried to trick me. He was not really a trader at heart, I suppose. He was more of a monk or maybe a preacher."},
  ["bas'saam"] = {response = "Yes, I know him. He is an Efreet trader. I met him often during my travels, and even though there was no real sympathy we had a certain mutual respect for each other. But all that changed when he found out I had dealings with the Marid."},
  ["tibia"] = {response = "Tibia is such a beautiful place. I would give it all if I could see it again."},
  ["daraman"] = {response = "Daraman was a holy man, a true prophet. He showed us how we can master grief and affliction through dignity and brotherliness. It is a shame I only came to fully appreciate his teachings when fate had cast me into darkness."},
  ["darashia"] = {response = "<Sighs> Aah yes... Darashia. I would give anything if I could see it again."},
  ["edron"] = {response = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."},
  ["thais"] = {response = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."},
  ["venore"] = {response = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."},
  ["kazordoon"] = {response = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."},
  ["carlin"] = {response = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."},
  ["ab'dendriel"] = {response = "I have never been to cities on other continents. And I suppose now I never will. I would be glad enough to leave this place."},
  ["ruler"] = {response = "The pharaoh? He is always in the palace, so I have heard only rumors about him. But I know one thing for sure - he is mad. End of story."},
  ["old pharaoh"] = {response = "The old pharaoh? I keep on hearing rumours about him, but I do not know if they are true."},
  ["palace"] = {response = "The palace lies to the south of the arena and to the west of the temple. Better stay clear of that place. If but half the things I have heard about it are true this palace is not a place for the living anymore."},
  ["arena"] = {response = "Ah yes, the arena. I do not really know what's going on there, because I have never seen it myself. However, I often hear strange noises from there, cheers and jeers and sometimes pityful screams."},
  ["temple"] = {response = "That temple is very old, and for centuries it used to be a place of worship and of contemplation. Now that the priests there are fanatic followers of the pharaoh this is no longer a holy place."},
  ["ascension"] = {response = "The concept of ascension is central to the pharaoh's creed. I am not sure I really understand it, but apparently it has to do with transformation to undeath. Nice, isn't it?"},
  ["rah"] = {response = "Ah yes - I recognise that. According to the pharaoh that is a living being's soul."},
  ["uthun"] = {response = "According to the pharaoh's teachings this is the total of a living being's memories and personal experiences."},
  ["akh"] = {response = "In the pharaoh's creed, this is what the physical body is called."},
  ["mourn"] = {response = "Spare me that inane twaddle, will you? I am glad enough to be alive, thank you."},
  ["pharaoh"] = {response = "The pharaoh? He is always in the palace, so I have heard only rumors about him. But I know one thing for sure - he is mad. End of story."}
  }

  for v in pairs(keywords) do
    if (msgcontains(msg, v)) then
        npcHandler:say(keywords[v].response, cid)
        talkState[talkUser] = 0
    end
  end
  return 1
end

npcHandler:setCallback(CALLBACK_GREET, MelchiorGreetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, MelchiorSayCallback)
npcHandler:addModule(FocusModule:new())