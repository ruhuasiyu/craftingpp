execute as @s[nbt={Inventory:[{id:"minecraft:torch"}]}] if block ~ ~ ~ #cpp:air unless block ~ ~-1 ~ #cpp:fluid run function cpp:auto_torch/put
scoreboard players set @s[scores={cppTorchPeriod=1..}] cppTorchTick 0
