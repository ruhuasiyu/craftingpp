scoreboard players add @s cppMobEff 1
scoreboard players set @s[scores={cppMobEff=6..}] cppMobEff 1

execute as @s[scores={cppMobEff=1}] run replaceitem block ~ ~ ~ container.16 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971066}
execute as @s[scores={cppMobEff=2}] run replaceitem block ~ ~ ~ container.16 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971067}
execute as @s[scores={cppMobEff=3}] run replaceitem block ~ ~ ~ container.16 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971068}
execute as @s[scores={cppMobEff=4}] run replaceitem block ~ ~ ~ container.16 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971069}
execute as @s[scores={cppMobEff=5}] run replaceitem block ~ ~ ~ container.16 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971070}

execute as @s[scores={cppMobEff=1}] run replaceitem block ~ ~ ~ container.15 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"info.cpp.slowness\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppMobEff=2}] run replaceitem block ~ ~ ~ container.15 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"info.cpp.weakness\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppMobEff=3}] run replaceitem block ~ ~ ~ container.15 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"info.cpp.glowing\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppMobEff=4}] run replaceitem block ~ ~ ~ container.15 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"info.cpp.poison\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
execute as @s[scores={cppMobEff=5}] run replaceitem block ~ ~ ~ container.15 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"info.cpp.wither\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971000}
