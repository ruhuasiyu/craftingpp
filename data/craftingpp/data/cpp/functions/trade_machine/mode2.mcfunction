execute if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function cpp:trade_machine/burn
execute as @s[scores={cppTradeValue=960..}] run replaceitem block ~ ~ ~ container.15 minecraft:experience_bottle
scoreboard players remove @s[scores={cppTradeValue=960..}] cppTradeValue 960
