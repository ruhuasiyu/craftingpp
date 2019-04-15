summon bat ~ ~ ~ {DeathLootTable:"cpp:decor/lip",NoAI:1b,Tags:["cpp_temp"]}
loot replace entity @s armor.head kill @e[type=bat,tag=cpp_temp,limit=1,sort=nearest,distance=..1]
execute as @e[type=bat,tag=cpp_temp,limit=1,sort=nearest,distance=..1] run function cpp:kill
