local curses = require "curses"
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

--Curses stuff
local stdscr = curses.initscr() --start curses
--Set up curses stuff
curses.raw() --prevents terminal specials (ctrl-c, etc)
curses.echo(false) --stop things from echoing back to the terminal
--Start doing things on stdscr
stdscr:clear()
stdscr:mvaddstr(1, 3, "Testing this thing out.")
stdscr:refresh()
stdscr:getch() --wait for user input
--Stop!
curses.endwin() --stop curses

--

--Get the modifier value from a base stat
local function statMod(stat)
    return math.floor((stat-10)/2)
end

local function roll(die)
    return math.random(1,die)
end

local function skillCheck(who,skill,bonus)
    x = roll(20) + statMod(who.stats[who.skills[skill][1]])
    if who.skills[skill][2] == true then x = x + who.stats.prof end
    --just incase of other bonuses!
    if bonuses ~= nil then x = x + bonus end
    return x
end

local function initSkill(who,name,stat)
    if who.skills == nil then who.skills = {} end
    who.skills[name] = {stat, false, 0}
end
