execute if block ~ ~ ~ #beds[facing=south] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_character","cpp_temp"],Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:12970000}}]}
execute if block ~ ~ ~ #beds[facing=west] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_character","cpp_temp"],Rotation:[90.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:12970000}}]}
execute if block ~ ~ ~ #beds[facing=north] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_character","cpp_temp"],Rotation:[180.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:12970000}}]}
execute if block ~ ~ ~ #beds[facing=east] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_character","cpp_temp"],Rotation:[270.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:12970000}}]}

execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run data modify entity @e[tag=cpp_character,tag=cpp_temp,distance=..0.1,limit=1] ArmorItems[3] set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run data modify entity @e[tag=cpp_character,tag=cpp_temp,distance=..0.1,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:-106b}]
tag @e[tag=cpp_character,tag=cpp_temp,distance=..0.1,limit=1] remove cpp_temp
replaceitem entity @s[gamemode=!creative,predicate=!cpp:mainhand/carrot_on_a_stick] weapon.offhand air
replaceitem entity @s[gamemode=!creative,predicate=cpp:mainhand/carrot_on_a_stick] weapon.mainhand air
