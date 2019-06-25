execute as @s[scores={cppWandLevel=1..3}] if block ~ ~-1 ~ dispenser run function cpp:rituals/rituals/book/type
execute as @s[scores={cppWandLevel=2..3}] if block ~ ~-1 ~ dispenser run function cpp:rituals/rituals/effect/type
execute as @s[scores={cppWandLevel=3}] if block ~ ~-1 ~ dispenser run function cpp:rituals/rituals/attr/type
execute as @s[scores={cppWandLevel=16}] run function cpp:rituals/rituals/spawner/type

execute if score #cpp_ritual_type cppValue matches 1.. run scoreboard players add @s cppTick 1
execute if score #cpp_ritual_type cppValue matches 1..299 run particle enchant ~ ~0.7 ~ 0 0 0 1 10
execute if score #cpp_ritual_type cppValue matches 16101..16107 run particle nautilus ~ ~0.7 ~ 0 0 0 1 10

execute unless score #cpp_ritual_type cppValue matches 1.. run function cpp:rituals/rituals/fail

execute if score #cpp_ritual_type cppValue matches 1.. as @s[scores={cppTick=1}] run tellraw @p {"translate":"info.cpp.rituals.start"}
execute if score #cpp_ritual_type cppValue matches 16101..16107 as @s[scores={cppTick=1}] run effect give @p instant_damage 1 1 true

execute if score #cpp_ritual_type cppValue matches 4..32 if score @s cppTick >= #rituals_time cppValue run function cpp:rituals/rituals/book/done
execute if score #cpp_ritual_type cppValue matches 101..199 if score @s cppTick >= #rituals_time cppValue run function cpp:rituals/rituals/effect/done
execute if score #cpp_ritual_type cppValue matches 201..299 if score @s cppTick >= #rituals_time cppValue run function cpp:rituals/rituals/attr/done
execute if score #cpp_ritual_type cppValue matches 16101 if score @s cppTick >= #rituals_time cppValue run function cpp:rituals/rituals/spawner/done

scoreboard players reset #cpp_ritual_type cppValue
