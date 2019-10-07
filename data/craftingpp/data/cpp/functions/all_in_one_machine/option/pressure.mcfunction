scoreboard players add @s cppPressure 1
scoreboard players set @s[scores={cppPressure=3..}] cppPressure 0
scoreboard players set @s[tag=!cpp_high_pressure,scores={cppPressure=2}] cppPressure 0
scoreboard players set @s[tag=!cpp_low_pressure,scores={cppPressure=0}] cppPressure 1

execute as @s[scores={cppPressure=0}] run replaceitem block ~ ~ ~ container.1 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.low_pressure\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppPressure=1}] run replaceitem block ~ ~ ~ container.1 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.normal_pressure\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppPressure=2}] run replaceitem block ~ ~ ~ container.1 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.high_pressure\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}

execute as @s[scores={cppPressure=0}] run replaceitem block ~ ~ ~ container.2 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971051}
execute as @s[scores={cppPressure=1}] run replaceitem block ~ ~ ~ container.2 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971052}
execute as @s[scores={cppPressure=2}] run replaceitem block ~ ~ ~ container.2 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.all_in_one_machine\"}"},CustomModelData:12971053}
