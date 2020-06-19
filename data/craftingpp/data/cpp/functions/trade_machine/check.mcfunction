execute as @s[scores={cppTradeMode=1..3}] if score @s cppTradeValue matches ..2000000000 if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function cpp:trade_machine/mode1
execute as @s[scores={cppTradeMode=2,cppTradeValue=2048..}] run function cpp:trade_machine/mode2
execute as @s[scores={cppTradeMode=3,cppTradeValue=512..}] run function cpp:trade_machine/mode3
execute as @s[scores={cppTradeMode=4}] if score $doTradeCreate cppConfig matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function cpp:trade_machine/mode4
