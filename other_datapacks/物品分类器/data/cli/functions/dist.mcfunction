setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items append from storage cli:temp Item 
loot insert ~ ~ ~ mine ~ 255 ~ shears{drop_content:1b}
setblock ~ 255 ~ air
execute at @e[type=armor_stand,tag=cli_source,distance=..25,limit=1] run data remove block ~ ~1 ~ Items[0]
