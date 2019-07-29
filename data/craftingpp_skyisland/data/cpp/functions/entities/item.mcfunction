# 哞菇死亡草方块变菌丝
execute as @s[nbt={Item:{tag:{id:"cpp:mycelium_marker"}}}] run function cpp:block/mycelium
# 生成彩色小羊
execute as @s[nbt={Item:{tag:{Tags:["cpp_generate_sheep"]}}}] run function cpp:plants/sheep
# 黑暗魔杖
execute as @s[nbt={Item:{id:"minecraft:blaze_rod",Count:1b,tag:{display:{}}}}] run function cpp:tool/wand_of_the_darkness
# 清理机器背景
kill @s[nbt={Item:{tag:{isMachineBg:1b}}}]
# 解压缩
execute as @s[tag=!cpp_item_compressed,nbt={Item:{Count:1b}}] if data entity @s Item.tag.compressedLevel run function cpp:use_carrot_on_a_stick/tool/decompress
# 树叶腐烂
execute as @s[nbt={Age:1s}] run function cpp:chain/leaves_check
# 炼药锅
execute as @s[nbt={Age:10s}] if block ~ ~ ~ cauldron unless block ~ ~ ~ cauldron[level=0] run function cpp:caul/check
# 发射器种植
execute as @s[nbt={Item:{Count:1b},Age:1s}] if block ~ ~ ~ #cpp:air align xyz run function cpp:dispenser_plant/check_dispenser
tag @s add cpp_item_checked
