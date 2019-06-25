function cpp:get_facing

execute if score @s cppValue matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_all_in_one_machine","cpp_barrel","cpp_need_fire"],Rotation:[0.0f,0.0f],Fire:32767s}
execute if score @s cppValue matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_all_in_one_machine","cpp_barrel","cpp_need_fire"],Rotation:[90.0f,0.0f],Fire:32767s}
execute if score @s cppValue matches 2 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_all_in_one_machine","cpp_barrel","cpp_need_fire"],Rotation:[180.0f,0.0f],Fire:32767s}
execute if score @s cppValue matches 3 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_all_in_one_machine","cpp_barrel","cpp_need_fire"],Rotation:[270.0f,0.0f],Fire:32767s}

loot replace entity @e[tag=cpp_all_in_one_machine,distance=..0.1,limit=1] armor.head loot cpp:all_in_one_machine

setblock ~ ~ ~ barrel{CustomName:"{\"translate\":\"item.cpp.all_in_one_machine\"}"}

scoreboard players add @e[type=armor_stand,tag=cpp_machine] cppStoredxp 0
kill @e[tag=cpp_machine_pos]
