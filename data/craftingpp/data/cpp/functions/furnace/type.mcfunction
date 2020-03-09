# 燃料改变
execute if block ~ ~ ~ furnace{BurnTime:0s,Items:[{Slot:1b}]} if data block ~ ~ ~ Items[{Slot:1b}] run function cpp:furnace/fuel_change_check
# 消耗燃料
execute as @s[tag=!cpp_check_fuel] if block ~ ~ ~ furnace{BurnTime:0s,Items:[{Slot:1b}]} run function cpp:furnace/fuel_use
# 进度
execute unless block ~ ~ ~ furnace{BurnTime:0s} store result block ~ ~ ~ CookTime short 1 run scoreboard players add @s cppTick 1
execute if score @s cppTick matches 200.. run function cpp:furnace/done
# 停止
execute if block ~ ~ ~ furnace{BurnTime:0s} run scoreboard players reset @s cppTick
# 发光
execute if block ~ ~ ~ furnace[lit=false] unless block ~ ~ ~ furnace{BurnTime:0s} run function cpp:furnace/lit_true
execute if block ~ ~ ~ furnace[lit=true]{BurnTime:0s} run function cpp:furnace/lit_false
