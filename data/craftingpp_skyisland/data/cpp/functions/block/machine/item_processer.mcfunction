summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_item_processer","cpp_barrel","cpp_need_fire"],Rotation:[0.0f,0.0f],Fire:32767s}
loot replace entity @e[tag=cpp_item_processer,distance=..0.1,limit=1] armor.head loot cpp:item_processer
setblock ~ ~ ~ barrel[facing=up]{CustomName:"{\"translate\":\"item.cpp.item_processer\"}"}
kill @e[tag=cpp_machine_pos]
