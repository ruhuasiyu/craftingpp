execute store result score #temp cppValue run data get entity @e[type=experience_orb,distance=..1.5,limit=1] Value
scoreboard players operation @s cppStoredxp += #temp cppValue
kill @e[type=experience_orb,distance=..1.5,limit=1]
