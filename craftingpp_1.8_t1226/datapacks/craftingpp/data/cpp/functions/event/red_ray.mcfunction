execute if entity @s[distance=..5] unless block ~ ~ ~ #cpp:burn offset ^ ^ ^0.005 run function cpp:event/red_ray

execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:red_sand run summon item ~ ~ ~ {Item:{id:"minecraft:glass",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ #minecraft:logs run summon item ~ ~ ~ {Item:{id:"minecraft:charcoal",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:cactus run summon item ~ ~ ~ {Item:{id:"minecraft:cactus_green",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:cobblestone run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:netherrack run summon item ~ ~ ~ {Item:{id:"minecraft:nether_brick",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:stone_bricks run summon item ~ ~ ~ {Item:{id:"minecraft:cracked_stone_bricks",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:wet_sponge run summon item ~ ~ ~ {Item:{id:"minecraft:sponge",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:clay run summon item ~ ~ ~ {Item:{id:"minecraft:terracotta",Count:1b}}

execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:white_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:white_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:orange_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:orange_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:magenta_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:light_blue_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:yellow_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:lime_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:lime_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:pink_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:pink_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:gray_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:gray_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:light_gray_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:cyan_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:cyan_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:purple_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:purple_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:blue_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:blue_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:brown_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:brown_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:green_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:green_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:red_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:red_glazed_terracotta",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:black_terracotta run summon item ~ ~ ~ {Item:{id:"minecraft:black_glazed_terracotta",Count:1b}}

execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:coal_ore run summon item ~ ~ ~ {Item:{id:"minecraft:coal",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:nether_quartz_ore run summon item ~ ~ ~ {Item:{id:"minecraft:quartz",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:iron_ore run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:gold_ore run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:redstone_ore run summon item ~ ~ ~ {Item:{id:"minecraft:redstone",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:lapis_ore run summon item ~ ~ ~ {Item:{id:"minecraft:lapis_lazuli",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:diamond_ore run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute if entity @s[distance=..5] if block ~ ~ ~ minecraft:emerald_ore run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b}}

execute if entity @s[distance=..5] if block ~ ~ ~ #cpp:burn run xp add @s -1
execute if entity @s[distance=..5] if block ~ ~ ~ #cpp:burn run setblock ~ ~ ~ air