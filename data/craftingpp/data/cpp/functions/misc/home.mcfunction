tag @s add cpp_home_player
summon armor_stand ~ 66 ~ {Tags:["cpp_home_back"]}
execute as @e[type=armor_stand,tag=cpp_home_back,limit=1] run function cpp:misc/home_marker
tag @s remove cpp_home_player
scoreboard players reset @s cppHome
