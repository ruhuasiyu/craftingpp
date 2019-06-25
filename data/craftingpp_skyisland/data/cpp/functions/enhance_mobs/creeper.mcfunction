data merge entity @s {Fuse:10s}
loot replace entity @s armor.head loot cpp:enhance_mobs/creeper
data merge entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:powered_creeper_mark"}}]}] {powered:1b}
replaceitem entity @s armor.head air
tag @s add cpp_enhance_mobs_checked
