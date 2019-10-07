scoreboard players add @s cppPlayerEff 1
scoreboard players set @s[scores={cppPlayerEff=6..}] cppPlayerEff 1

execute as @s[scores={cppPlayerEff=1}] run replaceitem block ~ ~ ~ container.12 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971061}
execute as @s[scores={cppPlayerEff=2}] run replaceitem block ~ ~ ~ container.12 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971062}
execute as @s[scores={cppPlayerEff=3}] run replaceitem block ~ ~ ~ container.12 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971063}
execute as @s[scores={cppPlayerEff=4}] run replaceitem block ~ ~ ~ container.12 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971064}
execute as @s[scores={cppPlayerEff=5}] run replaceitem block ~ ~ ~ container.12 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971065}

execute as @s[scores={cppPlayerEff=1}] run replaceitem block ~ ~ ~ container.11 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"info.cpp.fire_resistance\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppPlayerEff=2}] run replaceitem block ~ ~ ~ container.11 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"info.cpp.water_breathing\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppPlayerEff=3}] run replaceitem block ~ ~ ~ container.11 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"info.cpp.night_vision\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppPlayerEff=4}] run replaceitem block ~ ~ ~ container.11 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"info.cpp.invisibility\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppPlayerEff=5}] run replaceitem block ~ ~ ~ container.11 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"info.cpp.saturation\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
