scoreboard players add @s cppTradeMode 1
execute unless score #doTradeCreate cppValue matches 1 run scoreboard players set @s[scores={cppTradeMode=3..}] cppTradeMode 1
execute if score #doTradeCreate cppValue matches 1 run scoreboard players set @s[scores={cppTradeMode=5..}] cppTradeMode 1
