execute unless entity @e[type=minecraft:item_frame,distance=..0.01,nbt={Item:{tag:{id:"cpp:smart_hand"}}}] run kill @s 
execute unless entity @s[scores={cppTick=1..}] run function cpp:item_frame/smart_hand/calc
scoreboard players remove @s cppTick 1
execute as @s[scores={cppTick=0}] run function cpp:item_frame/smart_hand/done
