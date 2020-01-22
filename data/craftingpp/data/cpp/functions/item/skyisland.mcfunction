data modify entity @s Item.id set from entity @s Item.tag.cppSkyislandDropId
data remove entity @s Item.tag
execute unless score $skyislandMode cppConfig matches 1 run kill @s
