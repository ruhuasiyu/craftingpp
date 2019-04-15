execute as @e[type=villager] unless score @s cppTick matches 20.. run scoreboard players add @s cppTick 1

execute as @e[type=villager,scores={cppTick=20..},tag=!cpp_tpp_level1,nbt={VillagerData:{level:1}}] run function cpp:tpp/level1/check
execute as @e[type=villager,tag=!cpp_tpp_level2,nbt={VillagerData:{level:2}}] run function cpp:tpp/level2/check
execute as @e[type=villager,tag=!cpp_tpp_level3,nbt={VillagerData:{level:3}}] run function cpp:tpp/level3/check
execute as @e[type=villager,tag=!cpp_tpp_level4,nbt={VillagerData:{level:4}}] run function cpp:tpp/level4/check
execute as @e[type=villager,tag=!cpp_tpp_level5,nbt={VillagerData:{level:5}}] run function cpp:tpp/level6/check

execute as @e[type=villager,nbt=!{VillagerData:{profession:"minecraft:none"}}] if data entity @s CustomName run function cpp:tpp/clear
