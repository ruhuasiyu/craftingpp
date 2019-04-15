execute as @s[scores={cppChainDam=0}] run loot spawn ~ ~ ~ loot cpp:random/1
execute as @s[scores={cppChainDam=1}] run loot spawn ~ ~ ~ loot cpp:random/2
execute as @s[scores={cppChainDam=2}] run loot spawn ~ ~ ~ loot cpp:random/3
execute as @s[scores={cppChainDam=3}] run loot spawn ~ ~ ~ loot cpp:random/4
execute as @s[scores={cppChainDam=4}] run loot spawn ~ ~ ~ loot cpp:random/5
execute as @s[scores={cppChainDam=5}] run loot spawn ~ ~ ~ loot cpp:random/6
execute as @s[scores={cppChainDam=6}] run loot spawn ~ ~ ~ loot cpp:random/7
execute as @s[scores={cppChainDam=7}] run loot spawn ~ ~ ~ loot cpp:random/8
execute as @s[scores={cppChainDam=8..}] run loot spawn ~ ~ ~ loot cpp:random/9

execute if entity @e[type=item,distance=..2,nbt={Item:{tag:{isRdMark:1b}}}] run scoreboard players add #temp cppValue 1
execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get #temp cppValue
kill @e[type=item,distance=..2,nbt={Item:{tag:{isRdMark:1b}}},limit=1]
