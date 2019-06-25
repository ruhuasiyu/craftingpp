loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute unless entity @s[nbt={HandItems:[{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}},{}]}] if block ~ ~ ~ coal_ore run scoreboard players add @s cppStoredxp 1
execute unless entity @s[nbt={HandItems:[{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}},{}]}] if block ~ ~ ~ redstone_ore run scoreboard players add @s cppStoredxp 3
execute unless entity @s[nbt={HandItems:[{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}},{}]}] if block ~ ~ ~ nether_quartz_ore run scoreboard players add @s cppStoredxp 3
execute unless entity @s[nbt={HandItems:[{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}},{}]}] if block ~ ~ ~ lapis_ore run scoreboard players add @s cppStoredxp 4
execute unless entity @s[nbt={HandItems:[{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}},{}]}] if block ~ ~ ~ diamond_ore run scoreboard players add @s cppStoredxp 5
execute unless entity @s[nbt={HandItems:[{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}},{}]}] if block ~ ~ ~ emerald_ore run scoreboard players add @s cppStoredxp 5
execute unless entity @s[nbt={HandItems:[{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}},{}]}] if score @s cppStoredxp matches 9.. run summon item ~ ~ ~ {Item:{id:"minecraft:experience_bottle",Count:1b}}
execute unless entity @s[nbt={HandItems:[{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}},{}]}] if score @s cppStoredxp matches 9.. run scoreboard players remove @s cppStoredxp 9
setblock ~ ~ ~ air
