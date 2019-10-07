scoreboard players add @s cppTemperature 1
scoreboard players set @s[scores={cppTemperature=3..}] cppTemperature 0
scoreboard players set @s[tag=!cpp_high_temperature,scores={cppTemperature=2}] cppTemperature 0
scoreboard players set @s[tag=!cpp_low_temperature,scores={cppTemperature=0}] cppTemperature 1

execute as @s[scores={cppTemperature=0}] run replaceitem block ~ ~ ~ container.10 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.low_temperature\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppTemperature=1}] run replaceitem block ~ ~ ~ container.10 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.normal_temperature\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppTemperature=2}] run replaceitem block ~ ~ ~ container.10 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.high_temperature\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}

execute as @s[scores={cppTemperature=0}] run replaceitem block ~ ~ ~ container.11 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971054}
execute as @s[scores={cppTemperature=1}] run replaceitem block ~ ~ ~ container.11 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971055}
execute as @s[scores={cppTemperature=2}] run replaceitem block ~ ~ ~ container.11 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971056}