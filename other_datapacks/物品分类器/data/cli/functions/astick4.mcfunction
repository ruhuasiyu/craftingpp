clone ~ ~ ~ ~ ~ ~ ~ 255 ~
execute store result score #t cppValue run data get block ~ 255 ~ Items
loot insert ~ 255 ~ loot entities/evoker
execute store result score #s cppValue run data get block ~ 255 ~ Items
setblock ~ 255 ~ air
execute unless score #t cppValue = #s cppValue run function cli:astick5
