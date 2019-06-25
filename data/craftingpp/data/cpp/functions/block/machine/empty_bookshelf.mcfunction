function cpp:get_facing

summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_bookshelf","cpp_barrel","cpp_need_fire"],Rotation:[180.0f,0.0f],Fire:32767s}

loot replace entity @e[tag=cpp_bookshelf,distance=..0.1,limit=1] armor.head loot cpp:empty_bookshelf

setblock ~ ~ ~ barrel{CustomName:"{\"translate\":\"item.cpp.empty_bookshelf\"}"}

kill @e[tag=cpp_machine_pos]
