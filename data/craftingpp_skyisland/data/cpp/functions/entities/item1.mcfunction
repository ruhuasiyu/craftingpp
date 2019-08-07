# 哞菇死亡草方块变菌丝
execute as @s[nbt={Item:{tag:{id:"cpp:mycelium_marker"}}}] run function cpp:block/mycelium
# 生成彩色小羊
execute as @s[nbt={Item:{tag:{Tags:["cpp_generate_sheep"]}}}] run function cpp:plants/sheep
# 清理机器背景
kill @s[nbt={Item:{tag:{isMachineBg:1b}}}]
# 解压缩
execute as @s[tag=!cpp_item_compressed,nbt={Item:{Count:1b}}] if data entity @s Item.tag.compressedLevel run function cpp:use_carrot_on_a_stick/tool/decompress
# 树叶腐烂
function cpp:chain/leaves_check
tag @s add cpp_item_checked
