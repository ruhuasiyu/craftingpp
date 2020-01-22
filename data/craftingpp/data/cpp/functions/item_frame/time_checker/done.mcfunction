execute if predicate cpp:time_checker/morning run tellraw @a[distance=..200] {"translate":"info.cpp.time_checker.morning"}
execute if predicate cpp:time_checker/noon run tellraw @a[distance=..200] {"translate":"info.cpp.time_checker.noon"}
execute if predicate cpp:time_checker/afternoon run tellraw @a[distance=..200] {"translate":"info.cpp.time_checker.afternoon"}
execute if predicate cpp:time_checker/evening run tellraw @a[distance=..200] {"translate":"info.cpp.time_checker.evening"}
execute if predicate cpp:time_checker/morning run playsound entity.player.levelup block @a[distance=..200] ~ ~ ~ 20 1.5
execute if predicate cpp:time_checker/afternoon run playsound entity.player.levelup block @a[distance=..200] ~ ~ ~ 20 1.5
