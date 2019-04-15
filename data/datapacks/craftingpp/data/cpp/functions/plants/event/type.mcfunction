execute as @s[tag=cpp_ore_leaves] run function cpp:plants/event/ore
execute as @s[tag=cpp_fruit_leaves] if block ~ ~-0.5 ~ #cpp:air unless data entity @s HandItems[0].id run loot replace entity @s weapon.mainhand loot cpp:crops/fruits

scoreboard players set #leaves_rts cppValue 0
