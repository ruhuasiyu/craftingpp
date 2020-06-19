data merge entity @s {ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f]}
loot replace entity @s armor.head 1 loot cpp:trade/hat

execute if data entity @s Offers.Recipes[{sell:{id:"minecraft:apple"}}] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:apple"}}].sell.tag merge value {id:"minecraft:apple"}
execute if data entity @s Offers.Recipes[{sell:{id:"minecraft:acacia_sapling"}}] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:acacia_sapling"}}].sell.tag merge value {CustomModelData:12971000,id:"minecraft:acacia_sapling"}

data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:stone",Count:64b},sell:{id:"minecraft:emerald",Count:1b},maxUses:12}
data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:stone",Count:64b},sell:{id:"minecraft:emerald",Count:1b},maxUses:12}
data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:stone",Count:64b},sell:{id:"minecraft:emerald",Count:1b},maxUses:12}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:stone",Count:1b},maxUses:12}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:stone",Count:1b},maxUses:6}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:firework_star",Count:1b,tag:{display:{Name:'{"italic":false,"translate":"item.cpp.moon_shard"}'},id:"cpp:moon_shard",CustomModelData:12970027}},sell:{id:"minecraft:carrot_on_a_stick",Count:1b},maxUses:3}

# 修改交易
loot replace entity @s weapon.mainhand 1 loot cpp:trade/buy1
data modify entity @s Offers.Recipes[0].buy.id set from entity @s HandItems[0].id
data modify entity @s Offers.Recipes[0].buy.Count set from entity @s HandItems[0].Count

loot replace entity @s weapon.mainhand 1 loot cpp:trade/buy2
data modify entity @s Offers.Recipes[1].buy.id set from entity @s HandItems[0].id
data modify entity @s Offers.Recipes[1].buy.Count set from entity @s HandItems[0].Count

loot replace entity @s weapon.mainhand 1 loot cpp:trade/buy3
data modify entity @s Offers.Recipes[2].buy.id set from entity @s HandItems[0].id
data modify entity @s Offers.Recipes[2].buy.Count set from entity @s HandItems[0].Count

loot replace entity @s weapon.mainhand 1 loot cpp:trade/sell1
data modify entity @s Offers.Recipes[9].sell.id set from entity @s HandItems[0].id
data modify entity @s Offers.Recipes[9].buy.Count set from entity @s HandItems[0].Count

loot replace entity @s weapon.mainhand 1 loot cpp:trade/sell2
data modify entity @s Offers.Recipes[10].sell.id set from entity @s HandItems[0].id
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:potion"}}]}}] run function cpp:trade/potion
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:splash_potion"}}]}}] run function cpp:trade/splash_potion
loot replace entity @s weapon.mainhand 1 loot cpp:trade/sell2_count
data modify entity @s Offers.Recipes[10].buy.Count set from entity @s HandItems[0].Count
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:firework_rocket"}}]}}] run function cpp:trade/firework_rocket

loot replace entity @s weapon.mainhand 1 loot cpp:trade/sell3
data modify entity @s Offers.Recipes[11].sell.id set from entity @s HandItems[0].id
data modify entity @s Offers.Recipes[11].sell.tag set from entity @s HandItems[0].tag

replaceitem entity @s weapon.mainhand air
tag @s add cpp_trade_added
