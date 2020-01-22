replaceitem block ~ ~ ~ container.15 stone
data modify block ~ ~ ~ Items[{Slot:15b}].id set from block ~ ~ ~ Items[{Slot:11b}].id
data modify block ~ ~ ~ Items[{Slot:15b}].tag.display set from block ~ ~ ~ Items[{Slot:11b}].tag.display
data modify block ~ ~ ~ Items[{Slot:15b}].tag.id set from block ~ ~ ~ Items[{Slot:11b}].tag.id
data modify block ~ ~ ~ Items[{Slot:15b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot:11b}].tag.CustomModelData
data modify block ~ ~ ~ Items[{Slot:15b}].tag.dict set from block ~ ~ ~ Items[{Slot:11b}].tag.dict
data modify block ~ ~ ~ Items[{Slot:15b}].tag.EntityTag set from block ~ ~ ~ Items[{Slot:11b}].tag.EntityTag
scoreboard players operation @s cppTradeValue -= #temp cppValue
function cpp:misc/value_show
