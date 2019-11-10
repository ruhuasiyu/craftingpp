execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:1b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.speed\"}"]},triggerEffect:[{id:"speed"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:3b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.haste\"}"]},triggerEffect:[{id:"haste"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:5b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.strength\"}"]},triggerEffect:[{id:"strength"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:8b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.jump_boost\"}"]},triggerEffect:[{id:"jump_boost"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:10b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.regeneration\"}"]},triggerEffect:[{id:"regeneration"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:11b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.resistance\"}"]},triggerEffect:[{id:"resistance"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:12b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.fire_resistance\"}"]},triggerEffect:[{id:"fire_resistance"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:13b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.water_breathing\"}"]},triggerEffect:[{id:"water_breathing"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:14b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.invisibility\"}"]},triggerEffect:[{id:"invisibility"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:16b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.night_vision\"}"]},triggerEffect:[{id:"night_vision"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:23b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.saturation\"}"]},triggerEffect:[{id:"saturation"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:28b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.slow_falling\"}"]},triggerEffect:[{id:"slow_falling"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:29b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.conduit_power\"}"]},triggerEffect:[{id:"conduit_power"}]}}}
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:0b,tag:{CustomPotionEffects:[{Id:99b}]}}]} run data merge entity @s {Item:{tag:{display:{Lore:["{\"translate\":\"lore.cpp.attached.chain\"}"]},triggerEffect:[{id:"chain"}]}}}

tellraw @p {"translate":"info.cpp.rituals.finish"}
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
data remove block ~ ~-1 ~ Items
tag @s remove cpp_rituals_item
