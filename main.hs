

{--
    TODO:
    -Dice and math
    -Read and write character saves to a sheet
    -As much math as possible, to avoid having to store as much data for each character.
    -Avoid randomness and dice as long as possible, to maintain as much purity as possible!
    -Skills and such should be stored as *functions*, with many references to the same functions!
--}

--Temp crap here!
roll = 10

str = 6
dex = 15
con = 12
int = 16
wis = 14
cha = 13
--

--Get the modifier value from a base stat
statMod stat =
    let x = (fromIntegral stat-10)/2
    in floor x

--skillCheck/Save: roll + statMod stat + prof + other
skillCheck roll stat bonus =
    roll + statMod stat + bonus
