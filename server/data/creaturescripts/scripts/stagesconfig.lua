skillConfig = {skill = getConfigValue('rateSkill'), magiclevel = getConfigValue('rateMagic')}
skillStages = {}
skillStages[SKILL_FIST] = {{0,7},{40,7},{70,5}}
skillStages[SKILL_CLUB] = {{0,7},{40,7},{70,5}}
skillStages[SKILL_SWORD] = {{0,7},{40,7},{70,5}}
skillStages[SKILL_AXE] = {{0,7},{40,7},{70,5}}
skillStages[SKILL_DISTANCE] = {{0,6},{40,5},{70,4}}
skillStages[SKILL_SHIELD] = {{0,5},{50,4},{70,3}}
skillStages[SKILL_FISHING] = {{0,6},{60,5},{80,4},{100,2},{110,1}} -- uncomment it to make it work, you can remove other skill config if you dont need it
skillStages[SKILL__MAGLEVEL] = {{0,5},{7,2}}
showInfoOnAdvance = false -- send player message about skill rate change
showInfoOnLogin = false -- send player message about skill rates when he login
 
function getPlayerSkillRatesText(cid)
 local skillInfo = getPlayerRates(cid)
 return "YOUR RATES: [ Magic Level: " .. skillInfo[SKILL__MAGLEVEL] * skillConfig.magiclevel .. "x || Fist: " .. skillInfo[SKILL_FIST] * skillConfig.skill .. "x | Club: " .. skillInfo[SKILL_CLUB] * skillConfig.skill .. "x |  Sword: " .. skillInfo[SKILL_SWORD] * skillConfig.skill .. "x | Axe: " .. skillInfo[SKILL_AXE] * skillConfig.skill .. "x |  Distance: " .. skillInfo[SKILL_DISTANCE] * skillConfig.skill .. " | Shielding: " .. skillInfo[SKILL_SHIELD] * skillConfig.skill .. "x | Fishing: " .. skillInfo[SKILL_FISHING] * skillConfig.skill .. "x ]"
end