# 破坏花草
execute unless block ~ ~ ~ pumpkin_stem run function cpp:block/break/pumpkin_stem
# 花草生长
execute if block ~ ~ ~ pumpkin_stem unless block ~ ~ ~ pumpkin_stem[age=0] run function cpp:crops/grow
