execute if score #cpp_ritual_type cppValue matches 201 run loot replace entity @s weapon.mainhand loot cpp:attribute/wooden_sword
execute if score #cpp_ritual_type cppValue matches 203 run loot replace entity @s weapon.mainhand loot cpp:attribute/stone_sword
execute if score #cpp_ritual_type cppValue matches 204 run loot replace entity @s weapon.mainhand loot cpp:attribute/iron_sword
execute if score #cpp_ritual_type cppValue matches 205 run loot replace entity @s weapon.mainhand loot cpp:attribute/diamond_sword
execute if score #cpp_ritual_type cppValue matches 206 run loot replace entity @s weapon.mainhand loot cpp:attribute/wooden_axe
execute if score #cpp_ritual_type cppValue matches 207 run loot replace entity @s weapon.mainhand loot cpp:attribute/golden_axe
execute if score #cpp_ritual_type cppValue matches 208 run loot replace entity @s weapon.mainhand loot cpp:attribute/stone_axe
execute if score #cpp_ritual_type cppValue matches 209 run loot replace entity @s weapon.mainhand loot cpp:attribute/iron_axe
execute if score #cpp_ritual_type cppValue matches 210 run loot replace entity @s weapon.mainhand loot cpp:attribute/diamond_axe
execute if score #cpp_ritual_type cppValue matches 211 run loot replace entity @s weapon.mainhand loot cpp:attribute/trident

execute if score #cpp_ritual_type cppValue matches 221 run loot replace entity @s weapon.mainhand loot cpp:attribute/carved_pumpkin
execute if score #cpp_ritual_type cppValue matches 222 run loot replace entity @s weapon.mainhand loot cpp:attribute/leather_helmet
execute if score #cpp_ritual_type cppValue matches 223 run loot replace entity @s weapon.mainhand loot cpp:attribute/iron_helmet
execute if score #cpp_ritual_type cppValue matches 224 run loot replace entity @s weapon.mainhand loot cpp:attribute/diamond_helmet

execute if score #cpp_ritual_type cppValue matches 231 run loot replace entity @s weapon.mainhand loot cpp:attribute/elytra
execute if score #cpp_ritual_type cppValue matches 232 run loot replace entity @s weapon.mainhand loot cpp:attribute/leather_chestplate
execute if score #cpp_ritual_type cppValue matches 233 run loot replace entity @s weapon.mainhand loot cpp:attribute/golden_chestplate
execute if score #cpp_ritual_type cppValue matches 234 run loot replace entity @s weapon.mainhand loot cpp:attribute/iron_chestplate
execute if score #cpp_ritual_type cppValue matches 235 run loot replace entity @s weapon.mainhand loot cpp:attribute/diamond_chestplate

execute if score #cpp_ritual_type cppValue matches 241 run loot replace entity @s weapon.mainhand loot cpp:attribute/leather_leggings
execute if score #cpp_ritual_type cppValue matches 242 run loot replace entity @s weapon.mainhand loot cpp:attribute/golden_leggings
execute if score #cpp_ritual_type cppValue matches 243 run loot replace entity @s weapon.mainhand loot cpp:attribute/chainmail_leggings
execute if score #cpp_ritual_type cppValue matches 244 run loot replace entity @s weapon.mainhand loot cpp:attribute/iron_leggings
execute if score #cpp_ritual_type cppValue matches 245 run loot replace entity @s weapon.mainhand loot cpp:attribute/diamond_leggings

execute if score #cpp_ritual_type cppValue matches 251 run loot replace entity @s weapon.mainhand loot cpp:attribute/leather_boots
execute if score #cpp_ritual_type cppValue matches 252 run loot replace entity @s weapon.mainhand loot cpp:attribute/iron_boots
execute if score #cpp_ritual_type cppValue matches 253 run loot replace entity @s weapon.mainhand loot cpp:attribute/diamond_boots

#execute unless data entity @s HandItems[0].tag.AttributeModifiers run function cpp:rituals/rituals/attr/set
