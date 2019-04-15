tp @s ~ ~ ~ facing entity @p[tag=cpp_player_hand_emerald_block]
data merge entity @s {Motion:[0.0d,-1.0d,0.0d]}
execute unless block ^ ^ ^0.4 #cpp:air run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}

execute store result score #temp0 cppValue run data get entity @p[tag=cpp_player_hand_emerald_block] Pos[0] 100
execute store result score #temp1 cppValue run data get entity @s Pos[0] 100
execute store result entity @s Motion[0] double 0.0005 run scoreboard players operation #temp0 cppValue -= #temp1 cppValue

execute store result score #temp0 cppValue run data get entity @p[tag=cpp_player_hand_emerald_block] Pos[2] 100
execute store result score #temp1 cppValue run data get entity @s Pos[2] 100
execute store result entity @s Motion[2] double 0.0005 run scoreboard players operation #temp0 cppValue -= #temp1 cppValue
