loot give @s[gamemode=!creative] loot cpp:portable_crafting_machine
function cpp:get_facing
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_machine","cpp_crafting_machine","cpp_barrel","cpp_need_fire","cpp_portable_crafting_machine"],Rotation:[0.0f,0.0f],Fire:32767s}
loot replace entity @e[tag=cpp_crafting_machine,distance=..0.1,limit=1] armor.head loot cpp:crafting_machine
setblock ~ ~ ~ barrel{CustomName:"{\"translate\":\"block.minecraft.petrified_oak_slab\"}"}
kill @e[tag=cpp_machine_pos]
