data modify entity @s Offers.Recipes[{sell:{id:"minecraft:firework_rocket"}}] set value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:firework_rocket",Count:4b,tag:{Fireworks:{Flight:3b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[I;123456]},{Flicker:1b,Trail:1b,Type:0b,Colors:[I;123456]}]}}},maxUses:12}

loot replace entity @s weapon.mainhand 1 loot cpp:trade/sell2_count
execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:firework_rocket"}}].sell.Count byte 1 run data get entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot cpp:trade/firework_rocket_color
execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:firework_rocket"}}].sell.tag.Fireworks.Explosions[0].Colors[0] int 1 run data get entity @s HandItems[0].tag.AttributeModifiers[0].Amount
loot replace entity @s weapon.mainhand 1 loot cpp:trade/firework_rocket_color
execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:firework_rocket"}}].sell.tag.Fireworks.Explosions[1].Colors[0] int 1 run data get entity @s HandItems[0].tag.AttributeModifiers[0].Amount
