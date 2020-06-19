execute unless entity @s[scores={cppTick=1..}] run function cpp:golem/hand/smart_hand_init
scoreboard players remove @s cppTick 1
execute as @s[scores={cppTick=0}] run loot spawn ~ ~ ~ loot cpp:fishing/fishing0
