loot replace block ~ ~ ~ container.16 1 loot cpp:golem
data modify block ~ ~ ~ Items[{Slot:16b}].tag.mainhand set from block ~ ~ ~ Items[{Slot:12b}]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.mainhand.Count set value 1b
data remove block ~ ~ ~ Items[{Slot:16b}].tag.mainhand.Slot
data modify block ~ ~ ~ Items[{Slot:16b}].tag.offhand set from block ~ ~ ~ Items[{Slot:2b}]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.offhand.Count set value 1b
data remove block ~ ~ ~ Items[{Slot:16b}].tag.offhand.Slot
data modify block ~ ~ ~ Items[{Slot:16b}].tag.offhand.tag.switch set from block ~ ~ ~ Items[{Slot:10b}]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.offhand.tag.switch.Count set value 1b
data remove block ~ ~ ~ Items[{Slot:16b}].tag.offhand.tag.switch.Slot
