execute as @s[scores={cppTradeMode=1}] run function cpp:trade_machine/mode1
execute as @s[scores={cppTradeMode=2}] run function cpp:trade_machine/mode2
execute as @s[scores={cppTradeMode=3}] if #doTradeCreate cppValue macthes 1.. if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function cpp:trade_machine/mode3
execute as @s[scores={cppTradeMode=4}] if #doTradeCreate cppValue macthes 1.. if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function cpp:trade_machine/mode4
