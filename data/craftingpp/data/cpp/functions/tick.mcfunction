# 玩家
execute as @a run function cpp:entities/player
# 非玩家
execute as @e[type=!player,tag=!cpp_item_checked] run function cpp:entities/type
# 磁铁
execute as @e[type=item,nbt={PickupDelay:0s}] at @s if entity @a[distance=..16,nbt={Inventory:[{tag:{id:"cpp:magnet"}}]}] run function cpp:tool/magnet_check
# 黑暗魔杖
execute as @e[nbt={Item:{id:"minecraft:blaze_rod",Count:1b,tag:{display:{}}}}] at @s run function cpp:tool/wand_of_the_darkness
# 发射器种植
execute as @e[nbt={Item:{Count:1b},Age:1s}] at @s if block ~ ~ ~ #cpp:air align xyz run function cpp:dispenser_plant/check_dispenser
# 炼药锅
execute as @e[type=item,nbt={Age:10s}] at @s if block ~ ~ ~ cauldron unless block ~ ~ ~ cauldron[level=0] run function cpp:caul/check
# spigot端需要下述命令
execute as @e[type=item,nbt={PickupDelay:-1s}] run data merge entity @s {PickupDelay:0s}
