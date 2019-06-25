summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_chest_dropper","cpp_barrel","cpp_need_fire"],Fire:32767s}
loot replace entity @e[tag=cpp_chest_dropper,distance=..0.1,limit=1] armor.head loot cpp:chest_dropper
setblock ~ ~ ~ barrel{CustomName:"{\"translate\":\"item.cpp.chest_dropper\"}"}
kill @e[tag=cpp_machine_pos]
