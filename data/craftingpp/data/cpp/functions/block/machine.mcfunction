# 清理附近 GUI
execute positioned ~-1 ~-2 ~-1 as @e[type=hopper_minecart,dx=2,dy=2,dz=2] run data modify entity @s TransferCooldown set value 2
execute if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 2

execute as @s[tag=cpp_portable_crafting_machine] unless entity @a[distance=..6] run setblock ~ ~ ~ air
execute as @s[tag=cpp_barrel] unless block ~ ~ ~ barrel run function cpp:block/break/barrel
execute as @s[tag=cpp_chest] unless block ~ ~ ~ chest run function cpp:block/break/chest

execute as @s[tag=cpp_crafting_machine] run function cpp:crafting_machine/tick
execute as @s[tag=cpp_all_in_one_machine] run function cpp:all_in_one_machine/tick
execute as @s[tag=cpp_trade_machine] run function cpp:trade_machine/tick
execute as @s[tag=cpp_mob_projector] run function cpp:mob_projector/tick
execute as @s[tag=cpp_item_processer] run function cpp:item_processer/tick
execute as @s[tag=cpp_golden_anvil] if entity @a[distance=..7] run function cpp:golden_anvil/tick
execute as @s[tag=cpp_empty_bookshelf] if entity @a[distance=..32] run function cpp:empty_bookshelf/tick
execute as @s[tag=cpp_dustbin] if predicate cpp:redstone_power run data remove block ~ ~ ~ Items
execute as @s[tag=cpp_chest_dropper] if data block ~ ~ ~ Items[] if predicate cpp:redstone_power positioned ~ ~255 ~ run function cpp:chest_dropper/check
execute as @s[tag=cpp_beacon_enhancer] run function cpp:beacon_enhancer/tick
