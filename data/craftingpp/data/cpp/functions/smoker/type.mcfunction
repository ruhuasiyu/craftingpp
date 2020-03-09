# 燃料改变
execute if block ~ ~ ~ smoker{BurnTime:0s,Items:[{Slot:1b}]} if data block ~ ~ ~ Items[{Slot:1b}] run function cpp:smoker/fuel_change_check
# 消耗燃料
execute as @s[tag=!cpp_check_fuel] if block ~ ~ ~ smoker{BurnTime:0s,Items:[{Slot:1b}]} run function cpp:smoker/fuel_use
# 进度
execute unless block ~ ~ ~ smoker{BurnTime:0s} store result block ~ ~ ~ CookTime short 1 run scoreboard players add @s cppTick 2
execute if score @s cppTick matches 200.. run function cpp:smoker/done
# 停止
execute if block ~ ~ ~ smoker{BurnTime:0s} run scoreboard players reset @s cppTick
# 发光
execute if block ~ ~ ~ smoker[lit=false] unless block ~ ~ ~ smoker{BurnTime:0s} run function cpp:smoker/lit_true
execute if block ~ ~ ~ smoker[lit=true]{BurnTime:0s} run function cpp:smoker/lit_false
