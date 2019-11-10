execute unless score #skyislandMode cppValue matches 1 run kill @s
data modify entity @s Item.id set from entity @s Item.tag.storeid
data remove entity @s Item.tag
