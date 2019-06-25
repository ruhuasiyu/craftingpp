tellraw @p {"translate":"info.cpp.rituals.finish"}
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
data remove block ~ ~-1 ~ Items
tag @s remove cpp_rituals_item

execute if score #cpp_ritual_type cppValue matches 101 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.speed\"}"]},triggerEffect:[{id:"speed"}]}}}
execute if score #cpp_ritual_type cppValue matches 103 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.haste\"}"]},triggerEffect:[{id:"haste"}]}}}
execute if score #cpp_ritual_type cppValue matches 105 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.strength\"}"]},triggerEffect:[{id:"strength"}]}}}
execute if score #cpp_ritual_type cppValue matches 108 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.jump_boost\"}"]},triggerEffect:[{id:"jump_boost"}]}}}
execute if score #cpp_ritual_type cppValue matches 110 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.regeneration\"}"]},triggerEffect:[{id:"regeneration"}]}}}
execute if score #cpp_ritual_type cppValue matches 111 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.resistance\"}"]},triggerEffect:[{id:"resistance"}]}}}
execute if score #cpp_ritual_type cppValue matches 112 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.fire_resistance\"}"]},triggerEffect:[{id:"fire_resistance"}]}}}
execute if score #cpp_ritual_type cppValue matches 113 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.water_breathing\"}"]},triggerEffect:[{id:"water_breathing"}]}}}
execute if score #cpp_ritual_type cppValue matches 114 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.invisibility\"}"]},triggerEffect:[{id:"invisibility"}]}}}
execute if score #cpp_ritual_type cppValue matches 116 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.night_vision\"}"]},triggerEffect:[{id:"night_vision"}]}}}
execute if score #cpp_ritual_type cppValue matches 123 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.saturation\"}"]},triggerEffect:[{id:"saturation"}]}}}
execute if score #cpp_ritual_type cppValue matches 128 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.slow_falling\"}"]},triggerEffect:[{id:"slow_falling"}]}}}
execute if score #cpp_ritual_type cppValue matches 129 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.conduit_power\"}"]},triggerEffect:[{id:"conduit_power"}]}}}
execute if score #cpp_ritual_type cppValue matches 199 run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.chain\"}"]},triggerEffect:[{id:"chain"}]}}}
