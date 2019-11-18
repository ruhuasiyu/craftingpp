scoreboard players operation @s cppStoredxp -= #t cppValue
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 0.999 run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 0.999 run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 0.999 run data get block ~ ~ ~ Items[{Slot:22b}].Count

scoreboard players set #random_min cppValue 1
scoreboard players set #random_max cppValue 16
function cpp:random

execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:9b}].tag.CustomModelData
execute if score #t cppValue matches 12970401 run summon minecraft:sheep ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970402 if score #rand cppValue matches 1..15 run summon minecraft:cow ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970402 if score #rand cppValue matches 16 run summon minecraft:mooshroom ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970403 run summon minecraft:pig ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970404 run summon minecraft:chicken ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970405 run summon minecraft:rabbit ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12974006 run summon bat ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970407 run summon minecraft:squid ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970408 run summon minecraft:creeper ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970409 if score #rand cppValue matches 1..11 run summon minecraft:zombie ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970409 if score #rand cppValue matches 12..13 run summon minecraft:zombie_villager ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970409 if score #rand cppValue matches 14..15 run summon minecraft:husk ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970409 if score #rand cppValue matches 16 run summon minecraft:drowned ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970410 if score #rand cppValue matches 1..15 run summon minecraft:skeleton ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970410 if score #rand cppValue matches 16 run summon minecraft:stray ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970411 if score #rand cppValue matches 1..15 run summon minecraft:spider ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970411 if score #rand cppValue matches 16 run summon minecraft:cave_spider ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970412 run summon minecraft:silverfish ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970801 run summon minecraft:witch ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970802 if score #rand cppValue matches 1..5 run summon minecraft:slime ~ ~-2 ~ {Size:0,PersistenceRequired:1b}
execute if score #t cppValue matches 12970802 if score #rand cppValue matches 6..8 run summon minecraft:slime ~ ~-2 ~ {Size:1,PersistenceRequired:1b}
execute if score #t cppValue matches 12970802 if score #rand cppValue matches 9..10 run summon minecraft:slime ~ ~-2 ~ {Size:2,PersistenceRequired:1b}
execute if score #t cppValue matches 12970803 run summon minecraft:phantom ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970804 run summon minecraft:polar_bear ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970805 run summon minecraft:zombie_pigman ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970806 run summon minecraft:ghast ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970807 if score #rand cppValue matches 1..5 run summon minecraft:magma_cube ~ ~-2 ~ {Size:0,PersistenceRequired:1b}
execute if score #t cppValue matches 12970807 if score #rand cppValue matches 6..8 run summon minecraft:magma_cube ~ ~-2 ~ {Size:1,PersistenceRequired:1b}
execute if score #t cppValue matches 12970807 if score #rand cppValue matches 9..10 run summon minecraft:magma_cube ~ ~-2 ~ {Size:2,PersistenceRequired:1b}
execute if score #t cppValue matches 12970808 run summon minecraft:blaze ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970809 run summon minecraft:enderman ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970810 run summon minecraft:endermite ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970811 if score #rand cppValue matches 1..9 run summon minecraft:villager ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970811 if score #rand cppValue matches 10 run summon minecraft:wandering_trader ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973201 if score #rand cppValue matches 1..4 run summon minecraft:vindicator ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973201 if score #rand cppValue matches 5..8 run summon minecraft:pillager ~ ~-2 ~ {HandItems:[{id:"minecraft:crossbow",Count:1b},{}],PersistenceRequired:1b}
execute if score #t cppValue matches 12973201 if score #rand cppValue matches 9 run summon minecraft:evoker ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973201 if score #rand cppValue matches 10 run summon minecraft:ravager ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973202 if score #rand cppValue matches 1..9 run summon minecraft:guardian ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973202 if score #rand cppValue matches 10 run summon minecraft:elder_guardian ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973203 run summon minecraft:shulker ~ ~-2 ~ {PersistenceRequired:1b,Color:16b}
execute if score #t cppValue matches 12973204 run summon minecraft:wither_skeleton ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973205 run summon minecraft:bee ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973206 run summon minecraft:wolf ~ ~-2 ~ {PersistenceRequired:1b,Angry:0b}
execute if score #t cppValue matches 12973207 run summon minecraft:cat ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973208 run summon minecraft:horse ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973209 run summon minecraft:donkey ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973210 if score #rand cppValue matches 1..9 run summon minecraft:llama ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973210 if score #rand cppValue matches 10 run summon minecraft:trader_llama ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973211 run summon minecraft:parrot ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973212 run summon minecraft:turtle ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973213 run summon minecraft:fox ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973214 run summon minecraft:panda ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973215 run summon minecraft:cod ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973216 run summon minecraft:salmon ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973217 run summon minecraft:tropical_fish ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973218 run summon minecraft:pufferfish ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973219 run summon minecraft:dolphin ~ ~-2 ~ {PersistenceRequired:1b}
