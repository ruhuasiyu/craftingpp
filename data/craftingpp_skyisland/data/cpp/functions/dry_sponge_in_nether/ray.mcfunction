execute if entity @s[distance=..6] unless block ~ ~ ~ wet_sponge positioned ^ ^ ^0.005 anchored feet run function cpp:dry_sponge_in_nether/ray
execute if entity @s[distance=..6] if block ~ ~ ~ wet_sponge run setblock ~ ~ ~ sponge
