execute as @s[nbt={PickupDelay:0s}] at @s if entity @a[distance=..8,nbt={Inventory:[{tag:{id:"cpp:magnet",Type:0b}}]}] run function cpp:tool/magnet
execute as @s[nbt={PickupDelay:0s}] at @s if entity @a[nbt={Inventory:[{tag:{id:"cpp:magnet",Type:1b}}]}] run function cpp:tool/magnet_area
