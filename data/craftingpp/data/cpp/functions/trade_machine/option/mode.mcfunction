scoreboard players add @s cppTradeMode 1
execute unless score $doTradeCreate cppConfig matches 1 run scoreboard players set @s[scores={cppTradeMode=4..}] cppTradeMode 1
execute if score $doTradeCreate cppConfig matches 1 run scoreboard players set @s[scores={cppTradeMode=5..}] cppTradeMode 1
