# 检测GUI
execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{cppMachineBg:1b}},{Slot:1b,tag:{cppMachineBg:1b}},{Slot:2b,tag:{cppMachineBg:1b}},{Slot:3b,tag:{cppMachineBg:1b}},{Slot:5b,tag:{cppMachineBg:1b}},{Slot:7b,tag:{cppMachineBg:1b}},{Slot:8b,tag:{cppMachineBg:1b}},{Slot:9b,tag:{cppMachineBg:1b}},{Slot:10b,tag:{cppMachineBg:1b}},{Slot:11b,tag:{cppMachineBg:1b}},{Slot:12b,tag:{cppMachineBg:1b}},{Slot:14b,tag:{cppMachineBg:1b}},{Slot:15b,tag:{cppMachineBg:1b}},{Slot:16b,tag:{cppMachineBg:1b}},{Slot:17b,tag:{cppMachineBg:1b}},{Slot:18b,tag:{cppMachineBg:1b}},{Slot:19b,tag:{cppMachineBg:1b}},{Slot:20b,tag:{cppMachineBg:1b}},{Slot:21b,tag:{cppMachineBg:1b}},{Slot:23b,tag:{cppMachineBg:1b}},{Slot:24b,tag:{cppMachineBg:1b}},{Slot:25b,tag:{cppMachineBg:1b}},{Slot:26b,tag:{cppMachineBg:1b}}]} run function cpp:mob_projector/reset
# 配方
tag @s remove cpp_machine_work
function cpp:check_power
execute as @s[tag=!cpp_redstone_powered,scores={cppStoredxp=1..}] if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:egg"},{Slot:13b},{Slot:22b}]} run function cpp:mob_projector/type
# 经验槽
execute if score @s cppStoredxp matches ..39 if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:experience_bottle"}] run function cpp:misc/xp_add
# 空闲时进度条和外观
scoreboard players set @s[tag=!cpp_machine_work] cppTick 0
execute as @s[tag=!cpp_machine_work] run data modify block ~ ~ ~ Items[{Slot:9b}].tag.CustomModelData set value 12971000
#execute as @s[scores={cppTick=0}] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.CustomModelData set value 12971020
#data modify entity @s[tag=!cpp_machine_work] ArmorItems[3].tag.CustomModelData set value 12970001
