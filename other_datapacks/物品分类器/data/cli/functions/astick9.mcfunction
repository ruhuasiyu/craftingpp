setblock ~ 255 ~ shulker_box
execute at @e[type=armor_stand,tag=cli_source,distance=..25,limit=1] run data modify storage cli:temp Item set from block ~ ~1 ~ Items[0]
data modify block ~ 255 ~ Items append from storage cli:temp Item 
loot spawn ~ ~ ~ mine ~ 255 ~ shears{drop_content:1b}
setblock ~ 255 ~ air
execute at @e[type=armor_stand,tag=cli_source,distance=..25,limit=1] run data remove block ~ ~1 ~ Items[0]
