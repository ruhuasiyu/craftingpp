scoreboard players add @s cppTemperature 1
scoreboard players set @s[scores={cppTemperature=3..}] cppTemperature 0
scoreboard players set @s[tag=!cpp_high_temperature,scores={cppTemperature=2}] cppTemperature 0
scoreboard players set @s[tag=!cpp_low_temperature,scores={cppTemperature=0}] cppTemperature 1
