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

--Temp crap here!
str = 6
dex = 15
con = 12
int = 16
wis = 14
cha = 13
--

--Get the modifier value from a base stat
function statMod(stat)
    return math.floor((stat-10)/2)
end

function roll(die)
    return math.random(1,die)
end

function skillCheck(stat,bonus)
    x = roll(20) + statMod(stat)
    if bonuses ~= nil then x = x + bonus end
    return x
end
