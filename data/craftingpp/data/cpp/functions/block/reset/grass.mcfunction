advancement revoke @s only cpp:block/grass
scoreboard players set #block_id cppValue 12
execute if score $skyislandMode cppConfig matches 1 run function cpp:block/put/grass
