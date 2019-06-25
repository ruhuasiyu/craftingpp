tp @s @e[tag=cpp_rituals_user_pos,sort=nearest,limit=1]
tag @s remove cpp_rituals_user
execute at @s facing entity @e[tag=cpp_rituals_user_facing,limit=1,sort=nearest] feet run tp ~ ~ ~
