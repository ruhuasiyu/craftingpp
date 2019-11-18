loot replace block ~ ~ ~ container.9 1 loot cpp:mob_projector/type
execute if data block ~ ~ ~ Items[{Slot:9b,tag:{cppMobProjWork:1b}}] run function cpp:mob_projector/work
