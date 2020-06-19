execute store result score @s cppChainDam run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute store result score #damage cppValue run data get entity @s SelectedItem.tag.Damage

execute as @s[scores={cppUseAxe1=1..}] run function cpp:chain/axe/init
execute as @s[scores={cppUseAxe2=1..}] run function cpp:chain/axe/init
execute as @s[scores={cppUseAxe3=1..}] run function cpp:chain/axe/init
execute as @s[scores={cppUseAxe4=1..}] run function cpp:chain/axe/init
execute as @s[scores={cppUseAxe5=1..}] run function cpp:chain/axe/init

execute as @s[scores={cppUsePick1=1..}] run function cpp:chain/pickaxe1/init
execute as @s[scores={cppUsePick2=1..}] run function cpp:chain/pickaxe2/init
execute as @s[scores={cppUsePick3=1..}] run function cpp:chain/pickaxe3/init
execute as @s[scores={cppUsePick4=1..}] run function cpp:chain/pickaxe4/init
execute as @s[scores={cppUsePick5=1..}] run function cpp:chain/pickaxe5/init

execute at @s[scores={cppUseShovel1=1..}] run function cpp:chain/shovel/init
execute at @s[scores={cppUseShovel2=1..}] run function cpp:chain/shovel/init
execute at @s[scores={cppUseShovel3=1..}] run function cpp:chain/shovel/init
execute at @s[scores={cppUseShovel4=1..}] run function cpp:chain/shovel/init
execute at @s[scores={cppUseShovel5=1..}] run function cpp:chain/shovel/init

execute at @s[scores={cppUseHoe1=1..}] run function cpp:chain/hoe/init
execute at @s[scores={cppUseHoe2=1..}] run function cpp:chain/hoe/init
execute at @s[scores={cppUseHoe3=1..}] run function cpp:chain/hoe/init
execute at @s[scores={cppUseHoe4=1..}] run function cpp:chain/hoe/init
execute at @s[scores={cppUseHoe5=1..}] run function cpp:chain/hoe/init

setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items[{Slot:0b}] merge from entity @s SelectedItem
execute store result block ~ 255 ~ Items[0].tag.Damage int 1 run scoreboard players get #damage cppValue
loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
