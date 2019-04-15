loot replace entity @s armor.head loot cpp:enhance_mobs/head
loot replace entity @s armor.chest loot cpp:enhance_mobs/chest
loot replace entity @s armor.legs loot cpp:enhance_mobs/legs
loot replace entity @s armor.feet loot cpp:enhance_mobs/feet
loot replace entity @s weapon.mainhand loot cpp:enhance_mobs/weapon
data merge entity @s {HandDropChances:[0.085f,0.085f],ArmorDropChances:[0.085f,0.085f,0.085f,0.085f]}
tag @s add cpp_enhance_mobs_checked
