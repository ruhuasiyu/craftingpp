tp @s @e[type=area_effect_cloud,tag=cpp_close_gui_pos,distance=..10,sort=nearest,limit=1]
tag @s remove cpp_close_gui
execute at @s facing entity @e[type=area_effect_cloud,tag=cpp_close_gui_facing,distance=..10,sort=nearest,limit=1] feet run tp ~ ~ ~
