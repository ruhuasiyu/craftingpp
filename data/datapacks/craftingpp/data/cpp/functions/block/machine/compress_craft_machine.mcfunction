summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_compress_craft_machine","cpp_barrel","cpp_need_fire"],Rotation:[0.0f,0.0f],Fire:32767s}
loot replace entity @e[tag=cpp_compress_craft_machine,distance=..0.1,limit=1] armor.head loot cpp:compress_craft_machine
setblock ~ ~ ~ barrel[facing=up]{CustomName:"{\"translate\":\"item.cpp.compress_craft_machine\"}"}

kill @e[tag=cpp_machine_pos]
