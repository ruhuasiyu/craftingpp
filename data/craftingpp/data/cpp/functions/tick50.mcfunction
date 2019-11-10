# 年长者之教诲
xp add @a[nbt={EnderItems:[{tag:{id:"cpp:elder_s_words"}}]}] 1
xp add @a[nbt={Inventory:[{tag:{id:"cpp:elder_s_words"}}]},nbt=!{EnderItems:[{tag:{id:"cpp:elder_s_words"}}]}] 1
# 磁铁(物品展示框)
execute at @e[type=item_frame,nbt={Item:{tag:{id:"cpp:magnet"}}}] positioned ~-16 ~-16 ~-16 run tp @e[type=item,distance=0.4..,nbt={PickupDelay:0s},nbt=!{Age:0s},nbt=!{Age:1s},dx=32,dy=32,dz=32] ~16 ~16 ~16
# 信标增强仪
execute as @e[type=armor_stand,tag=cpp_beacon_enhancer] at @s run function cpp:beacon_enhancer/tick50

schedule function cpp:tick50 50t
