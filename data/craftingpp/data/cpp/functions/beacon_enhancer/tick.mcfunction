execute unless data block ~ ~ ~ Items[{Slot:17b}] run scoreboard players add @s cppMobType 1
scoreboard players set @s[scores={cppMobType=2..}] cppMobType 0

execute as @s[scores={cppMobType=0}] run replaceitem block ~ ~ ~ container.0 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971015}
execute as @s[scores={cppMobType=1}] run replaceitem block ~ ~ ~ container.0 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971017}
execute unless data block ~ ~ ~ Items[{Slot:1b}] run replaceitem block ~ ~ ~ container.1 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:2b}] run replaceitem block ~ ~ ~ container.2 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:3b}] run replaceitem block ~ ~ ~ container.3 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:4b}] run replaceitem block ~ ~ ~ container.4 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:5b}] run replaceitem block ~ ~ ~ container.5 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:6b}] run replaceitem block ~ ~ ~ container.6 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:7b}] run replaceitem block ~ ~ ~ container.7 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:8b}] run replaceitem block ~ ~ ~ container.8 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}

execute unless data block ~ ~ ~ Items[{Slot:9b}] run replaceitem block ~ ~ ~ container.9 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:10b}] run replaceitem block ~ ~ ~ container.10 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:11b}] run function cpp:beacon_enhancer/player
execute unless data block ~ ~ ~ Items[{Slot:12b}] run function cpp:beacon_enhancer/player
execute unless data block ~ ~ ~ Items[{Slot:13b}] run replaceitem block ~ ~ ~ container.13 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:14b}] run replaceitem block ~ ~ ~ container.14 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:15b}] run function cpp:beacon_enhancer/mob
execute unless data block ~ ~ ~ Items[{Slot:16b}] run function cpp:beacon_enhancer/mob

execute as @s[scores={cppMobType=0}] run replaceitem block ~ ~ ~ container.17 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer.hostile\"}"},CustomModelData:12971000}
execute as @s[scores={cppMobType=1}] run replaceitem block ~ ~ ~ container.17 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer.all_mobs\"}"},CustomModelData:12971000}

execute unless data block ~ ~ ~ Items[{Slot:18b}] run replaceitem block ~ ~ ~ container.18 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:19b}] run replaceitem block ~ ~ ~ container.19 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:20b}] run replaceitem block ~ ~ ~ container.20 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:21b}] run replaceitem block ~ ~ ~ container.21 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:22b}] run replaceitem block ~ ~ ~ container.22 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:23b}] run replaceitem block ~ ~ ~ container.23 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:24b}] run replaceitem block ~ ~ ~ container.24 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:25b}] run replaceitem block ~ ~ ~ container.25 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
execute unless data block ~ ~ ~ Items[{Slot:26b}] run replaceitem block ~ ~ ~ container.26 petrified_oak_slab{isMachineBg:1b,display:{Name:"{\"translate\":\"item.cpp.beacon_enhancer\"}"},CustomModelData:12971000}
