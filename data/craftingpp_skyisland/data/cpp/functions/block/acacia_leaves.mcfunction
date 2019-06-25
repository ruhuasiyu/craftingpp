advancement revoke @s only cpp:block/acacia_leaves
execute at @s anchored eyes run function cpp:block/acacia_leaves_ray

execute store result score @s cppValue run data get entity @s SelectedItem.tag.CustomModelData
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:acacia_leaves"}}] store result score @s cppValue run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute as @s[scores={cppValue=12970101}] at @e[tag=cpp_leave_pos] run summon armor_stand ~ ~-0.5 ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_leaves","cpp_fruit_leaves","cpp_need_fire"],ArmorItems:[{},{},{},{id:"minecraft:acacia_leaves",Count:1b,tag:{CustomModelData:12970101}}],Fire:32767s}
execute as @s[scores={cppValue=12970102}] at @e[tag=cpp_leave_pos] run summon armor_stand ~ ~-0.5 ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_leaves","cpp_ore_leaves","cpp_need_fire"],ArmorItems:[{},{},{},{id:"minecraft:acacia_leaves",Count:1b,tag:{CustomModelData:12970102}}],Fire:32767s}
execute as @s[scores={cppValue=12970103}] at @e[tag=cpp_leave_pos] run summon armor_stand ~ ~-0.5 ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_leaves","cpp_wool_leaves","cpp_need_fire"],ArmorItems:[{},{},{},{id:"minecraft:acacia_leaves",Count:1b,tag:{CustomModelData:12970103}}],Fire:32767s}
