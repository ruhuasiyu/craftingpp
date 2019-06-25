loot replace entity @s weapon.mainhand loot cpp:crops/ores

execute as @s[nbt={HandItems:[{id:"minecraft:diamond_ore"},{}]}] run setblock ~ ~0.5 ~ diamond_ore
execute as @s[nbt={HandItems:[{id:"minecraft:emerald_ore"},{}]}] run setblock ~ ~0.5 ~ emerald_ore
execute as @s[nbt={HandItems:[{id:"minecraft:lapis_ore"},{}]}] run setblock ~ ~0.5 ~ lapis_ore
execute as @s[nbt={HandItems:[{id:"minecraft:redstone_ore"},{}]}] run setblock ~ ~0.5 ~ redstone_ore
execute as @s[nbt={HandItems:[{id:"minecraft:gold_ore"},{}]}] run setblock ~ ~0.5 ~ gold_ore
execute as @s[nbt={HandItems:[{id:"minecraft:nether_quartz_ore"},{}]}] run setblock ~ ~0.5 ~ nether_quartz_ore
execute as @s[nbt={HandItems:[{id:"minecraft:iron_ore"},{}]}] run setblock ~ ~0.5 ~ iron_ore
execute as @s[nbt={HandItems:[{id:"minecraft:coal_ore"},{}]}] run setblock ~ ~0.5 ~ coal_ore

kill @s