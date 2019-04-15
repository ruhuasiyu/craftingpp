execute positioned ~ 256 ~ if entity @s[dy=100] run kill @s
execute positioned ~ -100 ~ if entity @s[dy=100] run kill @s
data merge entity @s {PortalCooldown:900}
execute if block ~ ~ ~ #cpp:golem_east run scoreboard players set @s cppGolemFace 0
execute if block ~ ~ ~ #cpp:golem_south run scoreboard players set @s cppGolemFace 1
execute if block ~ ~ ~ #cpp:golem_west run scoreboard players set @s cppGolemFace 2
execute if block ~ ~ ~ #cpp:golem_north run scoreboard players set @s cppGolemFace 3
execute if block ~ ~ ~ #cpp:golem_up run scoreboard players set @s cppGolemFace 4
execute if block ~ ~ ~ #cpp:golem_down run scoreboard players set @s cppGolemFace 5
execute if block ~ ~ ~ #cpp:golem_end run kill @s

execute as @s[scores={cppGolemFace=0}] at @s run tp @s ~0.1 ~0 ~0 270 0
execute as @s[scores={cppGolemFace=1}] at @s run tp @s ~0 ~0 ~0.1 0 0
execute as @s[scores={cppGolemFace=2}] at @s run tp @s ~-0.1 ~0 ~0 90 0
execute as @s[scores={cppGolemFace=3}] at @s run tp @s ~0 ~0 ~-0.1 180 0
execute as @s[scores={cppGolemFace=4}] at @s run tp @s ~0 ~0.1 ~0 0 90
execute as @s[scores={cppGolemFace=5}] at @s run tp @s ~0 ~-0.1 ~0 0 -90

execute as @s[tag=cpp_golem_miner] unless block ~ ~ ~ #cpp:golem_control_blocks run function cpp:golem/miner
execute as @s[tag=cpp_golem_farmer] run function cpp:golem/farmer
execute as @s[tag=cpp_golem_fisher] if block ~ ~ ~ water run function cpp:golem/fisher
execute as @s[tag=cpp_golem_warrior] if entity @e[type=#cpp:normal_mob,distance=..1,nbt={Invulnerable:0b}] run function cpp:golem/warrior
execute as @s[tag=cpp_golem_herder] run function cpp:golem/herder
