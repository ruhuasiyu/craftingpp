loot replace block ~ ~ ~ container.11 1 loot cpp:mob_projector/type
execute if data block ~ ~ ~ Items[{Slot:11b,tag:{cppMobProjWork:1b}}] run function cpp:mob_projector/work
