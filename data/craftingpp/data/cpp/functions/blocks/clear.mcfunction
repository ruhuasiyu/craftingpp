execute positioned ~-1 ~-2 ~-1 as @e[type=hopper_minecart,dx=2,dy=2,dz=2] run data modify entity @s TransferCooldown set value 2
execute if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 2
