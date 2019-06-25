summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_moon_stone","cpp_gold_block","cpp_need_fire"],Fire:32767s}
loot replace entity @e[tag=cpp_moon_stone,distance=..0.1,limit=1] armor.head loot cpp:moon_stone
setblock ~ ~ ~ gold_block
kill @e[tag=cpp_machine_pos]
