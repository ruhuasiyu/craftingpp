execute unless data block ~ ~ ~ Items[{Slot:0b}] run replaceitem block ~ ~ ~ container.0 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971013}
execute unless data block ~ ~ ~ Items[{Slot:1b}] run replaceitem block ~ ~ ~ container.1 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:2b}] run replaceitem block ~ ~ ~ container.2 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:3b}] run replaceitem block ~ ~ ~ container.3 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
# 输入
execute unless data block ~ ~ ~ Items[{Slot:5b}] run replaceitem block ~ ~ ~ container.5 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
# 附魔之瓶
execute unless data block ~ ~ ~ Items[{Slot:7b}] run replaceitem block ~ ~ ~ container.7 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:8b}] run replaceitem block ~ ~ ~ container.8 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.xp_bar\"}"},CustomModelData:12971000}

execute unless data block ~ ~ ~ Items[{Slot:9b}] run replaceitem block ~ ~ ~ container.9 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:10b}] run replaceitem block ~ ~ ~ container.10 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:11b}] run replaceitem block ~ ~ ~ container.11 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:12b}] run replaceitem block ~ ~ ~ container.12 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:14b}] run replaceitem block ~ ~ ~ container.14 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:15b}] run replaceitem block ~ ~ ~ container.15 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
function cpp:mob_projector/xp

execute unless data block ~ ~ ~ Items[{Slot:18b}] run replaceitem block ~ ~ ~ container.18 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971019}
execute unless data block ~ ~ ~ Items[{Slot:19b}] run replaceitem block ~ ~ ~ container.19 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:20b}] run replaceitem block ~ ~ ~ container.20 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:21b}] run replaceitem block ~ ~ ~ container.21 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:23b}] run replaceitem block ~ ~ ~ container.23 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:24b}] run replaceitem block ~ ~ ~ container.24 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:25b}] run replaceitem block ~ ~ ~ container.25 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.mob_projector\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:26b}] run replaceitem block ~ ~ ~ container.26 firework_star{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.xp_bar\"}"},CustomModelData:12971000}

function cpp:check_power
execute as @s[tag=!cpp_redstone_powered] if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:egg"},{Slot:13b},{Slot:22b}]} run function cpp:mob_projector/type

execute unless entity @s[scores={cppMacType=1..}] run scoreboard players reset @s cppTick
scoreboard players reset @s cppMacType
