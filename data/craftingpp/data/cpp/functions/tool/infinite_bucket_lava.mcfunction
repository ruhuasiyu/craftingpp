setblock ~ ~ ~ lava
execute store result storage cpp:infinite_bucket Item.tag.liquid.lava int 1 run scoreboard players remove #lava cppValue 1
