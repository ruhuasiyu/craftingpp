# 年长者之教诲
xp add @a[nbt={EnderItems:[{tag:{id:"cpp:elder_s_words"}}]}] 1
xp add @a[nbt={Inventory:[{tag:{id:"cpp:elder_s_words"}}]},nbt=!{EnderItems:[{tag:{id:"cpp:elder_s_words"}}]}] 1

# 磁铁(物品展示框)
execute at @e[type=item_frame,nbt={Item:{tag:{id:"cpp:magnet"}}}] as @e[type=item,distance=0.4..,nbt={PickupDelay:0s},nbt=!{Age:0s}] positioned ~-16 ~-16 ~-16 run tp @s[dx=32,dy=32,dz=32] ~16 ~16 ~16

schedule function cpp:tick50 50t
