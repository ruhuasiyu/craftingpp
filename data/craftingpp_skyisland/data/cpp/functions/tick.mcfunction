# 玩家
execute as @a run function cpp:entities/player
# 非玩家
execute as @e[type=!player,tag=!cpp_item_checked] run function cpp:entities/type
# 磁铁
execute as @e[type=item,nbt={PickupDelay:0s}] at @s if entity @a[distance=..16,nbt={Inventory:[{tag:{id:"cpp:magnet"}}]}] run function cpp:tool/magnet_check
# 炼药锅
execute as @e[type=item,nbt={Age:10s}] at @s if block ~ ~ ~ cauldron unless block ~ ~ ~ cauldron[level=0] run function cpp:caul/check
