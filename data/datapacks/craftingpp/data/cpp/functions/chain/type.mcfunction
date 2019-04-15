execute positioned ^ ^ ^0.2 run particle entity_effect ~ ~-1 ~ 0.734375 0.37890625 0.3046875 1 0
title @s[scores={cppChainTick=1}] actionbar [{"text":" "}]

scoreboard players remove @s cppChainTick 1

execute if data entity @s SelectedItem as @s[scores={cppUseAxe1=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/axe/init
execute if data entity @s SelectedItem as @s[scores={cppUseAxe2=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/axe/init
execute if data entity @s SelectedItem as @s[scores={cppUseAxe3=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/axe/init
execute if data entity @s SelectedItem as @s[scores={cppUseAxe4=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/axe/init

execute if data entity @s SelectedItem as @s[scores={cppUsePick1=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/pickaxe1/init
execute if data entity @s SelectedItem as @s[scores={cppUsePick2=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/pickaxe2/init
execute if data entity @s SelectedItem as @s[scores={cppUsePick3=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/pickaxe3/init
execute if data entity @s SelectedItem as @s[scores={cppUsePick4=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/pickaxe4/init

execute if data entity @s SelectedItem at @s[scores={cppUseShovel1=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/shovel/init
execute if data entity @s SelectedItem at @s[scores={cppUseShovel2=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/shovel/init
execute if data entity @s SelectedItem at @s[scores={cppUseShovel3=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/shovel/init
execute if data entity @s SelectedItem at @s[scores={cppUseShovel4=1..},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/shovel/init

scoreboard players reset @s cppUseAxe1
scoreboard players reset @s cppUseAxe2
scoreboard players reset @s cppUseAxe3
scoreboard players reset @s cppUseAxe4

scoreboard players reset @s cppUsePick1
scoreboard players reset @s cppUsePick2
scoreboard players reset @s cppUsePick3
scoreboard players reset @s cppUsePick4

scoreboard players reset @s cppUseShovel1
scoreboard players reset @s cppUseShovel2
scoreboard players reset @s cppUseShovel3
scoreboard players reset @s cppUseShovel4
