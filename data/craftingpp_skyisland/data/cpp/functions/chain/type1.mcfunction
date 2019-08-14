scoreboard players set @s cppChainDam 0
execute store result score @s cppChainDam run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add @s cppChainDam 1
execute as @s[scores={cppUseAxe1=1..}] run function cpp:chain/axe/init
execute as @s[scores={cppUseAxe2=1..}] run function cpp:chain/axe/init
execute as @s[scores={cppUseAxe3=1..}] run function cpp:chain/axe/init
execute as @s[scores={cppUseAxe4=1..}] run function cpp:chain/axe/init

execute as @s[scores={cppUsePick1=1..}] run function cpp:chain/pickaxe1/init
execute as @s[scores={cppUsePick2=1..}] run function cpp:chain/pickaxe2/init
execute as @s[scores={cppUsePick3=1..}] run function cpp:chain/pickaxe3/init
execute as @s[scores={cppUsePick4=1..}] run function cpp:chain/pickaxe4/init

execute at @s[scores={cppUseShovel1=1..}] run function cpp:chain/shovel/init
execute at @s[scores={cppUseShovel2=1..}] run function cpp:chain/shovel/init
execute at @s[scores={cppUseShovel3=1..}] run function cpp:chain/shovel/init
execute at @s[scores={cppUseShovel4=1..}] run function cpp:chain/shovel/init
