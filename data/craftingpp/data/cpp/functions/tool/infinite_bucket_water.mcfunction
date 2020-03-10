setblock ~ ~ ~ water
execute store result storage cpp:infinite_bucket Item.tag.liquid.water int 1 run scoreboard players remove #water cppValue 1
