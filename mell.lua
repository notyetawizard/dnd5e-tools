--Temp crap here!
mell = {}
--Stats
mell.race = "tiefling"
mell.class = {
    rogue = 1
}
mell.stats = {
    str = 6,
    dex = 15,
    con = 12,
    int = 16,
    wis = 14,
    cha = 13,
    prof = 2
}
--Skills (and saves)
mell.skills = {
    --{stat, prof(0=no, 1=yes, 2=exp, 3=jack), bonus}
    str =               {"str", 0, 0},
    dex =               {"dex", 1, 0},
    con =               {"cha", 0, 0},
    int =               {"int", 1, 0},
    wis =               {"wis", 0, 0},
    cha =               {"cha", 1, 0},
    --
    acrobatics =        {"dex", 1, 0},
    animal_handling =   {"wis", 0, 0},
    arcana =            {"int", 0, 0},
    athletics =         {"str", 0, 0},
    deception =         {"cha", 0, 0},
    history =           {"int", 0, 0},
    insight =           {"wis", 1, 0},
    intimidation =      {"cha", 0, 0},
    investigation =     {"int", 2, 0},
    medicine =          {"int", 0, 0},
    nature =            {"int", 0, 0},
    perception =        {"wis", 1, 0},
    performance =       {"cha", 0, 0},
    persuasion =        {"cha", 0 ,0},
    religion =          {"int", 0, 0},
    slight_of_hand =    {"dex", 1, 0},
    stealth =           {"dex", 2, 0},
    survival =          {"wis", 0, 0},
    --
    thieves_tools =     {"dex", 1, 0},
    rapier =            {"dex", 1, 0},
    dagger =            {"dex", 1, 0},
    sneak_attack =      {"dex", 1, 0},
    dagger_range =      {"dex", 1, 0},
    shortbow =          {"dex", 1, 0}
}
mell.armour = 11
mell.shield = 0
mell.hp = {9,9}
mell.temp_hp = 0
mell.speed = 30
mell.exp = {200,300}
mell.hit_dice = {
    d8 = 1
}

return mell
