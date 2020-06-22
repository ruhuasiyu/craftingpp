tp @s ~ 255 ~
forceload add ~ ~ ~ ~
summon armor_stand ~ ~ ~ {Tags:["cpp_tp_target_aec"],Invulnerable:1b,Invisible:1b,NoGravity:1b}
tag @s add cpp_tp_target_player
execute as @e[type=armor_stand,tag=cpp_tp_target_aec,limit=1,sort=nearest,distance=..1] run function cpp:tool/origin_of_the_world3
tag @s remove cpp_tp_target_player
forceload remove ~ ~ ~ ~
