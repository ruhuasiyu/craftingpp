summon bat ~ ~ ~ {DeathLootTable:"cpp:misc/head_red_lip",NoAI:1b,Tags:["cpp_temp"]}
loot replace entity @s armor.head 1 kill @e[type=bat,tag=cpp_temp,distance=..1,sort=nearest,limit=1]
execute as @e[type=bat,tag=cpp_temp,distance=..1,sort=nearest,limit=1] run function cpp:kill
