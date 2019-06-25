summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_muffler","cpp_petrified_oak_slab","cpp_need_fire"],Fire:32767s}
loot replace entity @e[tag=cpp_muffler,distance=..0.1,limit=1] armor.head loot cpp:muffler
setblock ~ ~ ~ petrified_oak_slab[type=double]
kill @e[tag=cpp_machine_pos]
