execute store result score #t cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score #t cppValue matches 12975041..12975060 run function cpp:plants/crops/hybrid
execute if score #t cppValue matches 12975001..12975060 run scoreboard players add #t cppValue 20
execute if predicate cpp:rice if score #t cppValue matches 12975101..12975141 run scoreboard players add #t cppValue 20
execute if score #t cppValue matches 12975061 run loot replace entity @s armor.head 1 loot cpp:lycoris_radiata
execute if score #t cppValue matches 12975062 run loot replace entity @s armor.head 1 loot cpp:trifolium
execute if score #t cppValue matches 12975063 run loot replace entity @s armor.head 1 loot cpp:blackthorn
execute if score #t cppValue matches 12975064 run loot replace entity @s armor.head 1 loot cpp:cattail
execute if score #t cppValue matches 12975065 run loot replace entity @s armor.head 1 loot cpp:marigold
execute if score #t cppValue matches 12975066 run loot replace entity @s armor.head 1 loot cpp:hibiscus
execute if score #t cppValue matches 12975067 run loot replace entity @s armor.head 1 loot cpp:hyacinth
execute if score #t cppValue matches 12975068 run loot replace entity @s armor.head 1 loot cpp:calamus
execute if score #t cppValue matches 12975069 run loot replace entity @s armor.head 1 loot cpp:wild_lilium
execute if score #t cppValue matches 12975070 run loot replace entity @s armor.head 1 loot cpp:bauhinia
execute if score #t cppValue matches 12975071 run loot replace entity @s armor.head 1 loot cpp:fluffy_grass
execute if score #t cppValue matches 12975072 run loot replace entity @s armor.head 1 loot cpp:gerbera
execute if score #t cppValue matches 12975073 run loot replace entity @s armor.head 1 loot cpp:esparto
execute if score #t cppValue matches 12975074 run loot replace entity @s armor.head 1 loot cpp:glow_forsythia
execute if score #t cppValue matches 12975075 run loot replace entity @s armor.head 1 loot cpp:glazed_shade
execute if score #t cppValue matches 12975076 run loot replace entity @s armor.head 1 loot cpp:stelera
execute if score #t cppValue matches 12975077 run loot replace entity @s armor.head 1 loot cpp:forage_crystal
execute if score #t cppValue matches 12975078 run loot replace entity @s armor.head 1 loot cpp:isorchid
execute if score #t cppValue matches 12975079 run loot replace entity @s armor.head 1 loot cpp:burning_chrysanthe
execute if score #t cppValue matches 12975080 run loot replace entity @s armor.head 1 loot cpp:oxalis
execute if score #t cppValue matches 12975021..12975161 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #t cppValue
