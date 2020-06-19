advancement revoke @s only cpp:block/acacia_sapling
fill ~-6 ~-6 ~-6 ~6 ~6 ~6 command_block{auto:1b,Command:"execute align xyz positioned ~0.5 ~ ~0.5 run function cpp:block/put/acacia_sapling"} replace acacia_sapling
execute positioned ~ -6 ~ as @s[dy=12] run fill ~-6 0 ~-6 ~6 12 ~6 command_block{auto:1b,Command:"execute align xyz positioned ~0.5 ~ ~0.5 run function cpp:block/put/acacia_sapling"} replace acacia_sapling
execute positioned ~ 249 ~ as @s[dy=12] run fill ~-6 243 ~-6 ~6 255 ~6 command_block{auto:1b,Command:"execute align xyz positioned ~0.5 ~ ~0.5 run function cpp:block/put/acacia_sapling"} replace acacia_sapling
