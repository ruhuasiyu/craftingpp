execute store result score #t cppValue run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:luck_of_the_sea"}].lvl
execute if score #t cppValue matches 0 run loot spawn ~ ~ ~ loot cpp:fishing/fishing0
execute if score #t cppValue matches 1 run loot spawn ~ ~ ~ loot cpp:fishing/fishing1
execute if score #t cppValue matches 2 run loot spawn ~ ~ ~ loot cpp:fishing/fishing2
execute if score #t cppValue matches 3 run loot spawn ~ ~ ~ loot cpp:fishing/fishing3
execute if score #t cppValue matches 4 run loot spawn ~ ~ ~ loot cpp:fishing/fishing4
execute if score #t cppValue matches 5.. run loot spawn ~ ~ ~ loot cpp:fishing/fishing5
scoreboard players add @s cppStoredxp 3
execute if score @s cppStoredxp matches 9.. run function cpp:golem/xp
