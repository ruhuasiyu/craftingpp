scoreboard players set @s cppTick 0
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:11b}].tag.cppMobProjXp
execute if score @s cppStoredxp >= #t cppValue run function cpp:mob_projector/spawn
