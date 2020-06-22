tp @s ~ ~ ~ facing entity @p[predicate=cpp:inventory/sachet]
data merge entity @s {Motion:[0.0d,-1.0d,0.0d]}
execute positioned ^ ^ ^-0.75 unless block ~ ~ ~ #cpp:attract_through if block ~ ~1 ~ #cpp:fluid run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}

execute store result score #temp0 cppValue run data get entity @p[predicate=cpp:inventory/sachet] Pos[0] 100
execute store result score #temp1 cppValue run data get entity @s Pos[0] 100
execute store result entity @s Motion[0] double -0.0005 run scoreboard players operation #temp0 cppValue -= #temp1 cppValue

execute store result score #temp0 cppValue run data get entity @p[predicate=cpp:inventory/sachet] Pos[2] 100
execute store result score #temp1 cppValue run data get entity @s Pos[2] 100
execute store result entity @s Motion[2] double -0.0005 run scoreboard players operation #temp0 cppValue -= #temp1 cppValue
