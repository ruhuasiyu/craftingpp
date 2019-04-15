scoreboard players add @s cppOutputFace 1
scoreboard players set @s[scores={cppOutputFace=7..}] cppOutputFace 1

execute as @s[scores={cppOutputFace=1}] run replaceitem block ~ ~ ~ container.10 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_east\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971041}
execute as @s[scores={cppOutputFace=2}] run replaceitem block ~ ~ ~ container.10 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_south\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971042}
execute as @s[scores={cppOutputFace=3}] run replaceitem block ~ ~ ~ container.10 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_west\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971043}
execute as @s[scores={cppOutputFace=4}] run replaceitem block ~ ~ ~ container.10 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_north\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971044}
execute as @s[scores={cppOutputFace=5}] run replaceitem block ~ ~ ~ container.10 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_down\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971045}
execute as @s[scores={cppOutputFace=6}] run replaceitem block ~ ~ ~ container.10 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.output_up\"}",Lore:["{\"translate\":\"lore.cpp.switch\"}"]},CustomModelData:12971046}
