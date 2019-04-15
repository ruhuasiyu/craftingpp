execute as @e[type=armor_stand,tag=cpp_need_fire] run data merge entity @s {Fire:32767s}

# 头饰恢复魔法值
scoreboard players add @a[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:garland"}}]},scores={cppMana=..29}] cppMana 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:green_hat"}}]},scores={cppMana=..59}] cppMana 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:empire_hat"}}]},scores={cppMana=..99}] cppMana 1
schedule function cpp:tick200 200t
