execute store result score #t cppValue run gamerule doDaylightCycle
execute if score #t cppValue matches 1 run function cpp:item_frame/time_checker/done
