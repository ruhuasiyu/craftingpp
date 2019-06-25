execute positioned ^ ^ ^0.2 run particle entity_effect ~ ~-1 ~ 0.734375 0.37890625 0.3046875 1 0
scoreboard players remove @s cppChainTick 1
execute if data entity @s SelectedItem as @s[nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:chain/type1
