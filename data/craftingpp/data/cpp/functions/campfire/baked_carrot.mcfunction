loot spawn ~ ~ ~ loot cpp:baked_carrot
execute as @s[scores={cppValue=0}] run data modify block ~ ~ ~ CookingTime[0] set value 0
execute as @s[scores={cppValue=0}] run data remove block ~ ~ ~ Items[{Slot:0b}]
execute as @s[scores={cppValue=1}] run data modify block ~ ~ ~ CookingTime[1] set value 0
execute as @s[scores={cppValue=1}] run data remove block ~ ~ ~ Items[{Slot:1b}]
execute as @s[scores={cppValue=2}] run data modify block ~ ~ ~ CookingTime[2] set value 0
execute as @s[scores={cppValue=2}] run data remove block ~ ~ ~ Items[{Slot:2b}]
execute as @s[scores={cppValue=3}] run data modify block ~ ~ ~ CookingTime[3] set value 0
execute as @s[scores={cppValue=3}] run data remove block ~ ~ ~ Items[{Slot:3b}]
