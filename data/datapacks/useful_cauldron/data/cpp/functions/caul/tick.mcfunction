execute as @e[type=item,nbt={Age:10s}] at @s if block ~ ~ ~ cauldron unless block ~ ~ ~ cauldron[level=0] run function cpp:caul/check
