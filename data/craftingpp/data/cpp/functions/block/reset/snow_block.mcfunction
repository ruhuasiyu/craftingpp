advancement revoke @s only cpp:block/snow_block
scoreboard players set #block_id cppValue 13
execute if score $skyislandMode cppConfig matches 1 run function cpp:block/put/snow_block
