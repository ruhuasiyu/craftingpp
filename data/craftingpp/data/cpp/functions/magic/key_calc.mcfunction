scoreboard players operation #temp cppValue = @s cppThisKey
scoreboard players operation #temp cppValue -= @s cppLastKey
scoreboard players operation @s cppLastKey = @s cppThisKey

execute if score #temp cppValue matches 1 run scoreboard players add @s cppKey 1
execute if score #temp cppValue matches -1 run scoreboard players remove @s cppKey 1
execute if score #temp cppValue matches -8 run scoreboard players add @s cppKey 1
execute if score #temp cppValue matches 8 run scoreboard players remove @s cppKey 1
scoreboard players add @s[scores={cppKey=..0}] cppKey 11
scoreboard players remove @s[scores={cppKey=12..}] cppKey 11

execute positioned ~ -1 ~ run function cpp:magic/show_title
