execute unless data entity @s ArmorItems[3].id run loot replace entity @s armor.head loot cpp:enhance_mobs/head
execute unless data entity @s ArmorItems[2].id run loot replace entity @s armor.chest loot cpp:enhance_mobs/chest
execute unless data entity @s ArmorItems[1].id run loot replace entity @s armor.legs loot cpp:enhance_mobs/legs
execute unless data entity @s ArmorItems[0].id run loot replace entity @s armor.feet loot cpp:enhance_mobs/feet
loot replace entity @s weapon.offhand loot cpp:enhance_mobs/arrow
data merge entity @s {HandDropChances:[0.085f,0.085f],ArmorDropChances:[0.085f,0.085f,0.085f,0.085f]}
tag @s add cpp_enhance_mobs_checked