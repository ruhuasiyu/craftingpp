scoreboard players operation #min cppValue = @s cppChainTick
scoreboard players operation #min cppValue /= #20 cppValue
scoreboard players operation #sec cppValue = #min cppValue
scoreboard players operation #min cppValue /= #60 cppValue
scoreboard players operation #sec cppValue %= #60 cppValue

execute as @s[scores={cppChainTick=20..}] if score #sec cppValue matches 10.. run title @s actionbar [{"translate":"title.effect.chain"},{"score":{"name":"#min","objective":"cppValue"},"color":"gray"},{"text":":"},{"score":{"name":"#sec","objective":"cppValue"},"color":"gray"}]
execute as @s[scores={cppChainTick=20..}] if score #sec cppValue matches ..9 run title @s actionbar [{"translate":"title.effect.chain"},{"score":{"name":"#min","objective":"cppValue"},"color":"gray"},{"text":":"},{"text":"0","color":"gray"},{"score":{"name":"#sec","objective":"cppValue"},"color":"gray"}]"

title @s[scores={cppChainTick=..19}] actionbar [{"text":" "}]
