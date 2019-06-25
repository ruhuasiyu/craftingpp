data modify entity @s Offers.Recipes[{sell:{id:"minecraft:splash_potion"}}] set value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:600}]}},maxUses:12}

loot replace entity @s weapon.mainhand 1 loot cpp:trade/potion_id
execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:splash_potion"}}].sell.tag.CustomPotionEffects[0].Id byte 1 run data get entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot cpp:trade/potion_duration
execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:splash_potion"}}].sell.tag.CustomPotionEffects[0].Duration int 200 run data get entity @s HandItems[0].Count
