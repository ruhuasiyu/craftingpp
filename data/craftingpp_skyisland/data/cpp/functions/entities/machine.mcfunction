execute as @s[tag=cpp_beacon_enhancer] run function cpp:beacon_enhancer/tick
execute as @s[tag=cpp_all_in_one_machine] run function cpp:all_in_one_machine/tick
execute as @s[tag=cpp_trade_machine] run function cpp:trade_machine/tick
execute as @s[tag=cpp_mob_projector] run function cpp:mob_projector/tick
execute as @s[tag=cpp_item_processer] run function cpp:item_processer/tick
execute as @s[tag=cpp_golden_anvil] if entity @a[distance=..6] run function cpp:golden_anvil/tick
execute as @s[tag=cpp_bookshelf] if entity @a[distance=..6] run function cpp:bookshelf/tick
execute as @s[tag=cpp_crafting_machine] if entity @a[distance=..6] run function cpp:craft/craft
execute as @s[tag=cpp_muffler] as @e[distance=..5] run data merge entity @s {Silent:1b}
execute as @s[tag=cpp_chest_dropper] if data block ~ ~ ~ Items[] run function cpp:chest_dropper/tick
function cpp:block/machine/clear
