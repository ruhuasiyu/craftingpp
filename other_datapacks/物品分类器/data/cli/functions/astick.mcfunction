execute unless block ~ ~ ~ light_blue_stained_glass run kill @s
execute unless block ~ ~1 ~ chest run kill @s
execute unless predicate cli:redstone_power if block ~ ~1 ~ chest if data block ~ ~1 ~ Items[] run function cli:astick1