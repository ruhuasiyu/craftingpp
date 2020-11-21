execute at @e[type=armor_stand,tag=cli_source,distance=..25,limit=1] run data modify storage cli:temp Item set from block ~ ~1 ~ Items[0]
execute store result score @s clivalue run data modify storage cli:temp Item.id set from entity @s Item.id
execute at @e[type=armor_stand,tag=cli_source,distance=..25,limit=1] unless data block ~ ~1 ~ Items[{}] run scoreboard players set @s clivalue 1
execute if score @s clivalue matches 0 run function cli:dist
