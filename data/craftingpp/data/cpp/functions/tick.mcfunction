# 玩家
execute as @a run function cpp:entities/player
# 非玩家
execute as @e[type=!player,tag=!cpp_item_checked] run function cpp:entities/type
