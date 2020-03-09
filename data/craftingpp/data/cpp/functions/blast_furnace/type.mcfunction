# 燃料改变
execute if block ~ ~ ~ blast_furnace{BurnTime:0s,Items:[{Slot:1b}]} if data block ~ ~ ~ Items[{Slot:1b}] run function cpp:blast_furnace/fuel_change_check
# 消耗燃料
execute as @s[tag=!cpp_check_fuel] if block ~ ~ ~ blast_furnace{BurnTime:0s,Items:[{Slot:1b}]} run function cpp:blast_furnace/fuel_use
# 进度
execute unless block ~ ~ ~ blast_furnace{BurnTime:0s} store result block ~ ~ ~ CookTime short 1 run scoreboard players add @s cppTick 2
execute if score @s cppTick matches 200.. run function cpp:blast_furnace/done
# 停止
execute if block ~ ~ ~ blast_furnace{BurnTime:0s} run scoreboard players reset @s cppTick
# 发光
execute if block ~ ~ ~ blast_furnace[lit=false] unless block ~ ~ ~ blast_furnace{BurnTime:0s} run function cpp:blast_furnace/lit_true
execute if block ~ ~ ~ blast_furnace[lit=true]{BurnTime:0s} run function cpp:blast_furnace/lit_false
