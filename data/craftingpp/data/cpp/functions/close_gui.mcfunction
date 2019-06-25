execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:["cpp_close_gui_pos"],Duration:2}
execute as @s at @s run summon area_effect_cloud ^ ^ ^3 {Tags:["cpp_close_gui_facing"],Duration:2}
tp @s ~ ~256 ~
tag @s add cpp_close_gui
