scoreboard players operation @s cppStoredxp -= #t cppValue
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 0.999 run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 0.999 run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 0.999 run data get block ~ ~ ~ Items[{Slot:22b}].Count

setblock ~ 255 ~ chest
loot insert ~ 255 ~ loot cpp:misc/random10
execute store result score #rand cppValue run data get block ~ 255 ~ Items[0].Count
setblock ~ 255 ~ air

execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:11b}].tag.CustomModelData
execute if score #t cppValue matches 12970401 run summon sheep ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970402 if score #rand cppValue matches 1..9 run summon cow ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970402 if score #rand cppValue matches 10 run summon mooshroom ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970403 run summon pig ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970404 run summon chicken ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970405 run summon rabbit ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12974006 run summon bat ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970407 run summon squid ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970408 run summon creeper ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970409 if score #rand cppValue matches 1..5 run summon zombie ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970409 if score #rand cppValue matches 6..7 run summon zombie_villager ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970409 if score #rand cppValue matches 8..9 run summon husk ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970409 if score #rand cppValue matches 10 run summon drowned ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970410 if score #rand cppValue matches 1..9 run summon skeleton ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970410 if score #rand cppValue matches 10 run summon stray ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970411 if score #rand cppValue matches 1..9 run summon spider ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970411 if score #rand cppValue matches 10 run summon cave_spider ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970412 run summon silverfish ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970801 run summon witch ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970802 if score #rand cppValue matches 1..5 run summon slime ~ ~-2 ~ {Size:0,PersistenceRequired:1b}
execute if score #t cppValue matches 12970802 if score #rand cppValue matches 6..8 run summon slime ~ ~-2 ~ {Size:1,PersistenceRequired:1b}
execute if score #t cppValue matches 12970802 if score #rand cppValue matches 9..10 run summon slime ~ ~-2 ~ {Size:2,PersistenceRequired:1b}
execute if score #t cppValue matches 12970803 run summon phantom ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970804 run summon polar_bear ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970805 if score #rand cppValue matches 1..9 run summon piglin ~ ~-2 ~
execute if score #t cppValue matches 12970805 if score #rand cppValue matches 10 run summon hoglin ~ ~-2 ~
execute if score #t cppValue matches 12970806 run summon ghast ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970807 if score #rand cppValue matches 1..5 run summon magma_cube ~ ~-2 ~ {Size:0,PersistenceRequired:1b}
execute if score #t cppValue matches 12970807 if score #rand cppValue matches 6..8 run summon magma_cube ~ ~-2 ~ {Size:1,PersistenceRequired:1b}
execute if score #t cppValue matches 12970807 if score #rand cppValue matches 9..10 run summon magma_cube ~ ~-2 ~ {Size:2,PersistenceRequired:1b}
execute if score #t cppValue matches 12970808 run summon blaze ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970809 run summon enderman ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970810 run summon endermite ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970811 if score #rand cppValue matches 1..9 run summon villager ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970811 if score #rand cppValue matches 10 run summon wandering_trader ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12970812 run summon strider ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973201 if score #rand cppValue matches 1..4 run summon vindicator ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973201 if score #rand cppValue matches 5..8 run summon pillager ~ ~-2 ~ {HandItems:[{id:"minecraft:crossbow",Count:1b},{}],PersistenceRequired:1b}
execute if score #t cppValue matches 12973201 if score #rand cppValue matches 9 run summon evoker ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973201 if score #rand cppValue matches 10 run summon ravager ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973202 if score #rand cppValue matches 1..9 run summon guardian ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973202 if score #rand cppValue matches 10 run summon elder_guardian ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973203 run summon shulker ~ ~-2 ~ {PersistenceRequired:1b,Color:16b}
execute if score #t cppValue matches 12973204 run summon wither_skeleton ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973205 run summon bee ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973206 run summon wolf ~ ~-2 ~ {PersistenceRequired:1b,Angry:0b}
execute if score #t cppValue matches 12973207 run summon cat ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973208 if score #rand cppValue matches 1..8 run summon horse ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973208 if score #rand cppValue matches 9 run summon zombie_horse ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973208 if score #rand cppValue matches 10 run summon skeleton_horse ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973209 run summon donkey ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973210 if score #rand cppValue matches 1..9 run summon llama ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973210 if score #rand cppValue matches 10 run summon trader_llama ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973211 run summon parrot ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973212 run summon turtle ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973213 run summon fox ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973214 run summon panda ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973215 run summon cod ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973216 run summon salmon ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973217 run summon tropical_fish ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973218 run summon pufferfish ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #t cppValue matches 12973219 run summon dolphin ~ ~-2 ~ {PersistenceRequired:1b}
