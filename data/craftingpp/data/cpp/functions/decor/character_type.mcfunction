execute if block ~ ~ ~ #beds[part=foot,facing=south] positioned ~ ~ ~1 unless entity @e[tag=cpp_character,sort=nearest,limit=1,distance=..0.5] run function cpp:decor/character_done
execute if block ~ ~ ~ #beds[part=foot,facing=north] positioned ~ ~ ~-1 unless entity @e[tag=cpp_character,sort=nearest,limit=1,distance=..0.5] run function cpp:decor/character_done
execute if block ~ ~ ~ #beds[part=foot,facing=east] positioned ~1 ~ ~ unless entity @e[tag=cpp_character,sort=nearest,limit=1,distance=..0.5] run function cpp:decor/character_done
execute if block ~ ~ ~ #beds[part=foot,facing=west] positioned ~-1 ~ ~ unless entity @e[tag=cpp_character,sort=nearest,limit=1,distance=..0.5] run function cpp:decor/character_done
execute if block ~ ~ ~ #beds[part=head] unless entity @e[tag=cpp_character,sort=nearest,limit=1,distance=..0.5] run function cpp:decor/character_done
