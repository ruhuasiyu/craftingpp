# 年长者之教诲
xp add @a[nbt={EnderItems:[{tag:{id:"cpp:elder_s_words"}}]}] 1
xp add @a[nbt={Inventory:[{tag:{id:"cpp:elder_s_words"}}]},nbt=!{EnderItems:[{tag:{id:"cpp:elder_s_words"}}]}] 1
# 信标增强仪
execute as @e[type=armor_stand,tag=cpp_beacon_enhancer] at @s run function cpp:beacon_enhancer/tick50

schedule function cpp:tick50 50t
