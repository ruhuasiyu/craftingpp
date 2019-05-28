scoreboard players enable @a cppTorchPeriod
scoreboard players add @a[scores={cppTorchPeriod=1..}] cppTorchTick 1
execute as @a[scores={cppTorchPeriod=1..}] if score @s cppTorchTick >= @s cppTorchPeriod if entity @s[nbt={Inventory:[{id:"minecraft:torch"}]}] at @s run function cpp:auto_torch/put
execute as @a[scores={cppTorchPeriod=1..}] if score @s cppTorchTick >= @s cppTorchPeriod run scoreboard players set @a[scores={cppTorchPeriod=1..}] cppTorchTick 0
