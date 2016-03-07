local math = require "math"
local mell = require "mell"

--[[
    TODO:
    -Dice and math
    -Read and write character saves to a sheet
    -As much math as possible, to avoid having to store as much data for each character.
    -Skills and such should be stored as *functions*, with many references to the same functions!
    -Correct randomness; it's not true right now
    -Seperate weapons from skills, add damage.
    
    -Daemon to handle everything between map view and character sheets, one day? Perfect for multi term set ups!
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
