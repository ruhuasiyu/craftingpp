setblock ~ 255 ~ barrel
loot replace block ~ 255 ~ container.0 1 loot cpp:misc/sign_dye
kill @s
execute store result score #t cppValue run data get block ~ 255 ~ Items[0].tag.cppDyeId
setblock ~ 255 ~ air
execute if block ~ ~ ~ #standing_signs unless entity @e[type=armor_stand,limit=1,sort=nearest,tag=cpp_sign,distance=..0.5] run function cpp:item/dye_sign/standing_signs
execute if block ~ ~ ~ #standing_signs store result entity @e[type=armor_stand,limit=1,sort=nearest,tag=cpp_sign,distance=..0.5] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #t cppValue 12975201
execute if block ~ ~ ~ #wall_signs unless entity @e[type=armor_stand,limit=1,sort=nearest,tag=cpp_sign,distance=..0.5] run function cpp:item/dye_sign/wall_signs
execute if block ~ ~ ~ #wall_signs store result entity @e[type=armor_stand,limit=1,sort=nearest,tag=cpp_sign,distance=..0.5] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #t cppValue 12975101
