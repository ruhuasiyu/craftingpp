scoreboard players set #60 cppValue 60
scoreboard players set #20 cppValue 20
scoreboard players operation #min cppValue = @s cppChainTick
scoreboard players operation #min cppValue /= #20 cppValue
scoreboard players operation #sec cppValue = #min cppValue
scoreboard players operation #min cppValue /= #60 cppValue
scoreboard players operation #sec cppValue %= #60 cppValue

execute if score #sec cppValue matches 10.. run title @s actionbar [{"translate":"title.effect.chain"},{"score":{"name":"#min","objective":"cppValue"},"color":"gray"},{"text":":"},{"score":{"name":"#sec","objective":"cppValue"},"color":"gray"}]
execute if score #sec cppValue matches ..9 run title @s actionbar [{"translate":"title.effect.chain"},{"score":{"name":"#min","objective":"cppValue"},"color":"gray"},{"text":":"},{"text":"0","color":"gray"},{"score":{"name":"#sec","objective":"cppValue"},"color":"gray"}]"
