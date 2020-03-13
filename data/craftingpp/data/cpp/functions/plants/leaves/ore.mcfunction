loot replace entity @s weapon.mainhand 1 loot cpp:misc/ore_leaves
execute as @s[nbt={HandItems:[{id:"minecraft:ancient_debris"},{}]}] run setblock ~ ~ ~ ancient_debris
execute as @s[nbt={HandItems:[{id:"minecraft:emerald_ore"},{}]}] run setblock ~ ~ ~ emerald_ore
execute as @s[nbt={HandItems:[{id:"minecraft:diamond_ore"},{}]}] run setblock ~ ~ ~ diamond_ore
execute as @s[nbt={HandItems:[{id:"minecraft:lapis_ore"},{}]}] run setblock ~ ~ ~ lapis_ore
execute as @s[nbt={HandItems:[{id:"minecraft:redstone_ore"},{}]}] run setblock ~ ~ ~ redstone_ore
execute as @s[nbt={HandItems:[{id:"minecraft:gold_ore"},{}]}] run setblock ~ ~ ~ gold_ore
execute as @s[nbt={HandItems:[{id:"minecraft:nether_quartz_ore"},{}]}] run setblock ~ ~ ~ nether_quartz_ore
execute as @s[nbt={HandItems:[{id:"minecraft:iron_ore"},{}]}] run setblock ~ ~ ~ iron_ore
execute as @s[nbt={HandItems:[{id:"minecraft:coal_ore"},{}]}] run setblock ~ ~ ~ coal_ore
kill @s