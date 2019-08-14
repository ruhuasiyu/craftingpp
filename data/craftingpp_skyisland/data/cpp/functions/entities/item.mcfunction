# spigot端需要下述命令
#execute as @s[nbt={PickupDelay:-1s}] run data merge entity @s {PickupDelay:0s}
# 磁铁
execute as @s[nbt={PickupDelay:0s}] if entity @a[distance=..16,nbt={Inventory:[{tag:{id:"cpp:magnet"}}]}] run function cpp:tool/magnet_check
# 黑暗魔杖
execute as @s[nbt={Item:{id:"minecraft:blaze_rod",Count:1b,tag:{display:{}}}}] run function cpp:tool/wand_of_the_darkness
# 发射器种植
execute as @s[nbt={Item:{Count:1b},Age:1s}] if block ~ ~ ~ #cpp:air align xyz run function cpp:dispenser_plant/check_dispenser
# 炼药锅
execute as @s[nbt={Age:10s}] if block ~ ~ ~ cauldron unless block ~ ~ ~ cauldron[level=0] run function cpp:caul/check

execute as @s[tag=!cpp_item_checked] run function cpp:entities/item1
