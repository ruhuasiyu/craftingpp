scoreboard players add @s cppPressure 1
scoreboard players set @s[scores={cppPressure=3..}] cppPressure 0
scoreboard players set @s[tag=!cpp_high_pressure,scores={cppPressure=2}] cppPressure 0
scoreboard players set @s[tag=!cpp_low_pressure,scores={cppPressure=0}] cppPressure 1
