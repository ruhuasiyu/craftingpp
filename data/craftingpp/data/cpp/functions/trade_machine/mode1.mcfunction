execute if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function cpp:trade_machine/burn
execute as @s[scores={cppTradeValue=2880..}] run replaceitem block ~ ~ ~ container.15 minecraft:emerald
scoreboard players remove @s[scores={cppTradeValue=2880..}] cppTradeValue 2880
