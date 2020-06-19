execute unless block ~ ~ ~ #campfires run kill @s
execute if block ~ ~ ~ #campfires[lit=true]{Items:[{}]} run function cpp:campfire/check
