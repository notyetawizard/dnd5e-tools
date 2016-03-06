local math = require "math"

--[[
    TODO:
    -Dice and math
    -Read and write character saves to a sheet
    -As much math as possible, to avoid having to store as much data for each character.
    -Avoid randomness and dice as long as possible, to maintain as much purity as possible!
    -Skills and such should be stored as *functions*, with many references to the same functions!
    -Correct randomness; it's not true right now
--]]


--Get the modifier value from a base stat
function statMod(stat)
    return math.floor((stat-10)/2)
end

function roll(die)
    return math.random(1,die)
end

function skillCheck(who,skill,bonus)
    x = roll(20) + statMod(who.stats[who.skills[skill][1]])
    if who.skills[skill][2] == true then x = x + who.stats.prof end
    --just incase of other bonuses!
    if bonuses ~= nil then x = x + bonus end
    return x
end

function initSkill(who,name,stat)
    if who.skills == nil then who.skills = {} end
    who.skills[name] = {stat, false, 0}
end
    
--Temp crap here!
me = {}
--Stats
me.stats = {
    str = 6,
    dex = 15,
    con = 12,
    int = 16,
    wis = 14,
    cha = 13,
    prof = 2
}
--Skills (and saves)
me.skills = {
    strength = {"str", false, 0},
    dexterity = {"dex", true, 0},
    --
    acrobatics = {"dex", true, 0},
    animal_handling = {"wis", false, 0},
    arcana = {"int", false, 0},
    athletics = {"str", false, 0},
    --
    rapier = {"dex", true, 0}
}

initSkill(me, "deception","cha")
