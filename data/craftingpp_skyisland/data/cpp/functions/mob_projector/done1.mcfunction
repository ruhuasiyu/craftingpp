scoreboard players remove @s cppStoredxp 4

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:22b}].Count
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players remove #temp cppValue 1

scoreboard players set #random_min cppRandom 1
scoreboard players set #random_max cppRandom 16
execute as @s[scores={cppMacType=2}] run function cpp:random
execute as @s[scores={cppMacType=9..11}] run function cpp:random

execute as @s[scores={cppMacType=1}] run summon sheep ~ ~-2 ~
execute as @s[scores={cppMacType=2,cppRandom=1..15}] run summon cow ~ ~-2 ~
execute as @s[scores={cppMacType=2,cppRandom=16}] run summon mooshroom ~ ~-2 ~
execute as @s[scores={cppMacType=3}] run summon pig ~ ~-2 ~
execute as @s[scores={cppMacType=4}] run summon chicken ~ ~-2 ~
execute as @s[scores={cppMacType=5}] run summon rabbit ~ ~-2 ~
execute as @s[scores={cppMacType=6}] run summon bat ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=7}] run summon squid ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=8}] run summon creeper ~ ~-2 ~ {PersistenceRequired:1b}

execute as @s[scores={cppMacType=9,cppRandom=1..11}] run summon zombie ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=9,cppRandom=12..13}] run summon zombie_villager ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=9,cppRandom=14..15}] run summon husk ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=9,cppRandom=16}] run summon drowned ~ ~-2 ~ {PersistenceRequired:1b}

execute as @s[scores={cppMacType=10,cppRandom=1}] run summon stray ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=10,cppRandom=2..16}] run summon skeleton ~ ~-2 ~ {PersistenceRequired:1b}

execute as @s[scores={cppMacType=11,cppRandom=1..15}] run summon spider ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=11,cppRandom=16}] run summon cave_spider ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=12}] run summon silverfish ~ ~-2 ~ {PersistenceRequired:1b}

scoreboard players reset @s cppTick
