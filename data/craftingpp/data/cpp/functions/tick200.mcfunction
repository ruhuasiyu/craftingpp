# 机器着火
execute as @e[type=armor_stand,tag=cpp_need_fire] run data merge entity @s {Fire:32767s}
# 信标增强仪
execute as @e[type=armor_stand,tag=cpp_beacon_enhancer] at @s unless predicate cpp:redstone_power if block ~ ~-1 ~ beacon run function cpp:beacon_enhancer/type
# 头饰恢复魔法值
scoreboard players add @a[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:garland"}}]},scores={cppMana=..29}] cppMana 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:green_hat"}}]},scores={cppMana=..59}] cppMana 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:empire_hat"}}]},scores={cppMana=..99}] cppMana 1
schedule function cpp:tick200 200t
