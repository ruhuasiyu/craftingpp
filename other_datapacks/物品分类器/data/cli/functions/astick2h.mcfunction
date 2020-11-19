function cli:dist_pos
execute at @e[type=area_effect_cloud,tag=cli_dist_pos] run function cli:astick3
kill @e[type=area_effect_cloud,tag=cli_dist_pos,distance=..3,limit=1]
