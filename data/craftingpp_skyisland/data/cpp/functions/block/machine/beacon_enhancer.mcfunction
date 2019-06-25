function cpp:get_facing

execute if score @s cppValue matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_beacon_enhancer","cpp_chest"],Rotation:[0.0f,0.0f]}
execute if score @s cppValue matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_beacon_enhancer","cpp_chest"],Rotation:[90.0f,0.0f]}
execute if score @s cppValue matches 2 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_beacon_enhancer","cpp_chest"],Rotation:[180.0f,0.0f]}
execute if score @s cppValue matches 3 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_beacon_enhancer","cpp_chest"],Rotation:[270.0f,0.0f]}

loot replace entity @e[tag=cpp_beacon_enhancer,distance=..0.1,limit=1] armor.head loot cpp:beacon_enhancer

execute if score @s cppValue matches 0 run setblock ~ ~ ~ chest[facing=north]{CustomName:"{\"translate\":\"item.cpp.beacon_enhancer\"}"}
execute if score @s cppValue matches 1 run setblock ~ ~ ~ chest[facing=east]{CustomName:"{\"translate\":\"item.cpp.beacon_enhancer\"}"}
execute if score @s cppValue matches 2 run setblock ~ ~ ~ chest[facing=south]{CustomName:"{\"translate\":\"item.cpp.beacon_enhancer\"}"}
execute if score @s cppValue matches 3 run setblock ~ ~ ~ chest[facing=west]{CustomName:"{\"translate\":\"item.cpp.beacon_enhancer\"}"}

kill @e[tag=cpp_machine_pos]
