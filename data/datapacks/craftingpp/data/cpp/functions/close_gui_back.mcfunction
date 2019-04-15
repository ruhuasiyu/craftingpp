tp @s @e[tag=cpp_close_gui_pos,sort=nearest,limit=1]
tag @s remove cpp_close_gui
execute at @s facing entity @e[tag=cpp_close_gui_facing,limit=1,sort=nearest] feet run tp ~ ~ ~
