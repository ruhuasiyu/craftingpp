execute as @e[type=hopper_minecart,dy=-2] run data modify entity @s TransferCooldown set value 2
execute if block ~ ~-1 ~ minecraft:hopper run data remove block ~ ~-1 ~ Items[{tag:{isMachineBg:1b}}]
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 2
