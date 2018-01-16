#=============================================
#		Crafting++ v1.8 by ruhuasiyu
#=============================================

##tag prefix cpp_*
#cpp_seedling, cpp_seedling_oak, etc	树种(7)
#cpp_converter_coal, etc	方块转化器(8)
#cpp_road1~4
#cpp_time_conditioner		时间调节器
#cpp_ringclock				闹钟
#cpp_ore_finder				矿物探测器
#cpp_transport_ball			传送球
#cpp_generate, cpp_*_tree, cpp_pillar, cpp_creeper_dungeon
#cpp_bat_trees, cpp_bat_dungeon
#cpp_ore_shulker			矿物探测的潜影贝
#cpp_tp_east, etc			传送球对应方位
#cpp_mob_checker			高压爬行者的生成
#cpp_dead					战利品表

##scoreboard list (20)
#cppCraft		合成的物品类型、漏斗矿车转化类型
#cppClearslot	要清除的槽位
#cppTicks		方块转化器的生长计时、工具、磁铁、漏斗矿车计时
#cppLevel		方块转化器的生长阶段、玩家位置
#cppAge			方块转化器的年龄、玩家手持传送球延迟检测
#cppCount1		漏斗矿车物品数
#cppCount2		漏斗矿车物品数
#cppCount3		漏斗矿车物品数
#cppCount4		漏斗矿车物品数
#
#cppRot			玩家朝向
#cppPearl		使用末影珍珠传送球
#cppWater		避水珠
#cppHealth		血量
#cppHunger		饥饿值
#
#cppSword		群体伤害
#cppPickaxe		区域破坏
#cppAxe			连环砍树、南瓜、西瓜
#cppShovel		连环挖砂砾
#cppHoe			区域锄地
#
#cppRandom		随机数

#teams list (24)
#cppOre1-7		矿物探测
#cppAdv*		称号



###	A 元素之力	###

##	合成	##
execute as @a[nbt={Inventory:[{Slot:34b,id:"minecraft:piston",Count:1b}]}] run function cpp:craft/element/element
scoreboard players set @a[nbt={Inventory:[{Slot:15b,Count:1b,tag:{display:{LocName:"cpp.item.red_force_of_fire"}}},{Slot:16b,Count:1b,tag:{display:{LocName:"cpp.item.blue_force_of_sky"}}},{Slot:17b,Count:1b,tag:{display:{LocName:"cpp.item.orange_force_of_dirt"}}},{Slot:24b,Count:1b,tag:{display:{LocName:"cpp.item.cyan_force_of_mountain"}}},{Slot:26b,Count:1b,tag:{display:{LocName:"cpp.item.green_force_of_water"}}},{Slot:35b,Count:1b,tag:{display:{LocName:"cpp.item.purple_force_of_wood"}}},{Slot:34b,Count:1b,tag:{display:{LocName:"cpp.item.white_force_of_lightning"}}},{Slot:33b,Count:1b,tag:{display:{LocName:"cpp.item.yellow_force_of_earth"}}}]}] cppCraft 10009
replaceitem entity @a[scores={cppCraft=10009}] inventory.16 minecraft:lingering_potion{CustomPotionColor:1973019,HideFlags:63,ench:[{id:999s}],display:{LocName:"cpp.item.black_force_of_moon"}}
scoreboard players set @a[scores={cppCraft=10001..10009}] cppClearslot 111101111
advancement grant @a[scores={cppCraft=10001..10009}] only cpp:element

execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.red_force_of_fire"}}},{Slot:26b,id:"minecraft:experience_bottle",Count:1b},{Slot:16b,id:"minecraft:sand",Count:1b}]}] run function cpp:craft/element/red_1sand
execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.red_force_of_fire"}}}]}] run function cpp:craft/element/red_0sand

execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.orange_force_of_dirt"}}}]}] run function cpp:craft/element/orange

execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.blue_force_of_sky"}}},{Slot:24b,id:"minecraft:experience_bottle",Count:1b},{Slot:26b,id:"minecraft:experience_bottle",Count:1b},{Slot:34b,id:"minecraft:slime_ball",Count:1b}]}] run function cpp:craft/element/blue

execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.yellow_force_of_earth"}}},{Slot:34b,id:"minecraft:experience_bottle",Count:1b},{Slot:33b,id:"minecraft:nether_wart",Count:1b},{Slot:35b,id:"minecraft:nether_wart",Count:1b}]}] run function cpp:craft/element/yellow

execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.purple_force_of_wood"}}},{Slot:33b,id:"minecraft:experience_bottle",Count:1b},{Slot:34b,id:"minecraft:experience_bottle",Count:1b},{Slot:35b,id:"minecraft:experience_bottle",Count:1b},{Slot:24b,id:"minecraft:wheat_seeds",Count:1b},{Slot:26b,id:"minecraft:wheat_seeds",Count:1b}]}] run function cpp:craft/element/purple_wart

execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.white_force_of_lightning"}}},{Slot:15b,tag:{display:{LocName:"cpp.item.enchanted_iron"}},Count:1b},{Slot:17b,tag:{display:{LocName:"cpp.item.enchanted_iron"}},Count:1b},{Slot:33b,tag:{display:{LocName:"cpp.item.enchanted_iron"}},Count:1b},{Slot:35b,tag:{display:{LocName:"cpp.item.enchanted_iron"}},Count:1b},{Slot:24b,tag:{display:{LocName:"cpp.item.circuit_board"}},Count:1b},{Slot:26b,tag:{display:{LocName:"cpp.item.circuit_board"}},Count:1b},{Slot:34b,tag:{display:{LocName:"cpp.item.enchanted_gold"}},Count:1b}]}] run function cpp:craft/element/white_chip
execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.white_force_of_lightning"}}},{Slot:15b,tag:{display:{LocName:"cpp.item.enchanted_iron"}},Count:1b},{Slot:17b,tag:{display:{LocName:"cpp.item.enchanted_iron"}},Count:1b},{Slot:33b,tag:{display:{LocName:"cpp.item.enchanted_iron"}},Count:1b},{Slot:35b,tag:{display:{LocName:"cpp.item.enchanted_iron"}},Count:1b}]}] run function cpp:craft/element/white_cap
execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.white_force_of_lightning"}}},{Slot:15b,tag:{display:{LocName:"cpp.item.rare_earth_glass"}}},{Slot:17b,tag:{display:{LocName:"cpp.item.rare_earth_glass"}}},{Slot:33b,tag:{display:{LocName:"cpp.item.rare_earth_glass"}}},{Slot:35b,tag:{display:{LocName:"cpp.item.rare_earth_glass"}}},{Slot:24b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:26b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:16b,tag:{display:{LocName:"cpp.item.action_chip"}}}]}] run function cpp:craft/element/white_action
execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.white_force_of_lightning"}}},{Slot:15b,tag:{display:{LocName:"cpp.item.reinforced_glass"}}},{Slot:17b,tag:{display:{LocName:"cpp.item.reinforced_glass"}}},{Slot:33b,tag:{display:{LocName:"cpp.item.reinforced_glass"}}},{Slot:35b,tag:{display:{LocName:"cpp.item.reinforced_glass"}}},{Slot:24b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:26b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:16b,tag:{display:{LocName:"cpp.item.control_chip"}}}]}] run function cpp:craft/element/white_control
execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.white_force_of_lightning"}}},{Slot:15b,tag:{display:{LocName:"cpp.item.quartz_glass"}}},{Slot:17b,tag:{display:{LocName:"cpp.item.quartz_glass"}}},{Slot:33b,tag:{display:{LocName:"cpp.item.quartz_glass"}}},{Slot:35b,tag:{display:{LocName:"cpp.item.quartz_glass"}}},{Slot:24b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:26b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:16b,tag:{display:{LocName:"cpp.item.ender_chip"}}}]}] run function cpp:craft/element/white_ender

execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.black_force_of_moon"}}}]}] run function cpp:craft/element/black

##	自动化	##
execute as @e[type=hopper_minecart,nbt={Items:[{Slot:0b,tag:{display:{LocName:"cpp.item.red_force_of_fire"}}},{Slot:1b,id:"minecraft:experience_bottle"},{Slot:2b,id:"minecraft:sand"}]}] at @s run function cpp:auto/red
execute as @e[type=hopper_minecart,nbt={Items:[{Slot:0b,tag:{display:{LocName:"cpp.item.orange_force_of_dirt"}}},{Slot:1b,id:"minecraft:experience_bottle"}]}] at @s run function cpp:auto/orange
execute as @e[type=hopper_minecart,nbt={Items:[{Slot:0b,tag:{display:{LocName:"cpp.item.cyan_force_of_mountain"}}},{Slot:1b,id:"minecraft:experience_bottle"},{Slot:2b,id:"minecraft:lava_bucket"}]}] at @s run function cpp:auto/cyan
execute as @e[type=hopper_minecart,nbt={Items:[{Slot:0b,tag:{display:{LocName:"cpp.item.green_force_of_water"}}},{Slot:1b,id:"minecraft:experience_bottle"},{Slot:2b,id:"minecraft:water_bucket"}]}] at @s run function cpp:auto/green
execute as @e[type=hopper_minecart,nbt={Items:[{Slot:0b,tag:{display:{LocName:"cpp.item.purple_force_of_wood"}}},{Slot:1b,id:"minecraft:experience_bottle"},{Slot:4b,id:"minecraft:bone_meal"}]}] at @s run function cpp:auto/farm
execute as @e[type=hopper_minecart,nbt={Items:[{Slot:0b,tag:{display:{LocName:"cpp.item.purple_force_of_wood"}}},{Slot:1b,id:"minecraft:experience_bottle"}]}] at @s run function cpp:auto/ranch
execute as @e[type=hopper_minecart,nbt={Items:[{Slot:0b,tag:{display:{LocName:"cpp.item.black_force_of_moon"}}},{Slot:1b,id:"minecraft:experience_bottle"}]}] at @s run function cpp:auto/black
execute as @e[type=hopper_minecart] run function cpp:auto/show_name

##	动作	##
execute as @e[type=potion,nbt={Potion:{tag:{display:{LocName:"cpp.item.red_force_of_fire"}}}}] at @s run function cpp:event/red
execute as @e[type=potion,nbt={Potion:{tag:{display:{LocName:"cpp.item.orange_force_of_dirt"}}}}] at @s run function cpp:event/orange
execute as @e[type=potion,nbt={Potion:{tag:{display:{LocName:"cpp.item.cyan_force_of_mountain"}}}}] at @s run function cpp:event/cyan
execute as @e[type=potion,nbt={Potion:{tag:{display:{LocName:"cpp.item.green_force_of_water"}}}}] at @s run function cpp:event/green
execute as @e[type=potion,nbt={Potion:{tag:{display:{LocName:"cpp.item.blue_force_of_sky"}}}}] at @s run function cpp:event/blue
execute as @e[type=potion,nbt={Potion:{tag:{display:{LocName:"cpp.item.yellow_force_of_earth"}}}}] at @s run function cpp:event/yellow
execute as @e[type=potion,nbt={Potion:{tag:{display:{LocName:"cpp.item.purple_force_of_wood"}}}}] at @s run function cpp:event/purple
execute as @e[type=potion,nbt={Potion:{tag:{display:{LocName:"cpp.item.white_force_of_lightning"}}}}] at @s run function cpp:event/white
execute as @e[type=potion,nbt={Potion:{tag:{display:{LocName:"cpp.item.black_force_of_moon"}}}}] at @s run function cpp:event/black

execute as @e[type=potion,nbt={Potion:{tag:{display:{LocName:"cpp.item.origin_of_the_world"}}}}] at @s run function cpp:event/origin
execute as @a[nbt={Inventory:[{tag:{display:{LocName:"cpp.item.underwater_pearl"}}}]}] at @s if block ~ ~1 ~ water run function cpp:event/underwater
execute as @a[nbt={Inventory:[{tag:{display:{LocName:"cpp.item.underwater_pearl"}}}]}] at @s if block ~ ~1 ~ flowing_water run function cpp:event/underwater
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{display:{LocName:"cpp.item.hithup_heart"}}}]},scores={cppHealth=..29}] at @s run function cpp:event/health
execute as @a[nbt={Inventory:[{tag:{display:{LocName:"cpp.item.energy_source"}}}]},scores={cppHunger=..19}] at @s run function cpp:event/hunger

##	切换模式	##
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.underwater_pearl"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.underwater_pearl_closed"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.underwater_pearl_closed"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.underwater_pearl"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.hithup_heart"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.hithup_heart_closed"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.hithup_heart_closed"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.hithup_heart"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.energy_source"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.energy_source_closed"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.energy_source_closed"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.energy_source"}}},Age:2s}

##	实用工具	##
#破坏之手
execute at @e[type=item_frame,nbt={Item:{tag:{display:{LocName:"cpp.item.break_hand"}}}}] run setblock ~ ~1 ~ air destroy
#磁铁
scoreboard players add @a[nbt={SelectedItem:{tag:{display:{LocName:"cpp.item.magnet"}}}}] cppTicks 1
scoreboard players add @a[nbt={Inventory:[{Slot:-106b,tag:{display:{LocName:"cpp.item.magnet"}}}]}] cppTicks 1
execute as @e[type=item] at @s run tp @s @p[distance=..20,scores={cppTicks=40..}]
scoreboard players remove @a[scores={cppTicks=40..}] cppTicks 40
#时间调节器
execute unless entity @e[type=item_frame,nbt={Item:{tag:{display:{LocName:"cpp.item.time_conditioner"}}}}] run gamerule randomTickSpeed 3
execute if entity @e[type=item_frame,nbt={Item:{tag:{display:{LocName:"cpp.item.time_conditioner"}}}}] run gamerule randomTickSpeed 6
execute if entity @e[type=item_frame,nbt={Item:{tag:{display:{LocName:"cpp.item.time_conditioner"}}}}] run time add 1
#闹钟
execute as @e[type=item_frame,nbt={Item:{tag:{display:{LocName:"cpp.item.ring_clock"}}}}] run function cpp:sys/ringclock
#矿物探测
# execute as @e[tag=cpp_ore_finder] at @s run give @p minecraft:squid_spawn_egg{display:{LocName:"cpp.item.ores_finder"},EntityTag:{Tags:["cpp_ore_finder","cpp_dead"],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],DeathLootTable:"minecraft:empty",CustomName:""},ench:[{id:999s}]}
# execute as @e[tag=cpp_ore_finder] at @s run tp @s[y=0,dy=10] ~ 10 ~
# execute as @e[tag=cpp_ore_finder] at @s offset ~-10 ~-10 ~-10 run function cpp:event/ore_finder
# scoreboard players add @e[tag=cpp_ore_shulker] cppTicks 1
# tp @e[tag=cpp_ore_shulker,scores={cppTicks=100..}] ~ -1000 ~
# kill @e[tag=cpp_ore_shulker,scores={cppTicks=100..}]
#传送球
scoreboard players set @a[nbt={SelectedItem:{tag:{display:{LocName:"cpp.item.transport_ball"}}}}] cppAge 2
scoreboard players remove @a[scores={cppAge=2..},nbt=!{SelectedItem:{tag:{display:{LocName:"cpp.item.transport_ball"}}}}] cppAge 1
execute as @a[scores={cppAge=1..,cppPearl=1..}] at @s run function cpp:sys/transport


###	B 食物和饮品	###
#30001-30005	咸食	
execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.bottle_of_salt"}}}]}] run function cpp:craft/food/salty
#30011-30012	甜食
scoreboard players set @a[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:sugar"},{Slot:16b,Count:1b,id:"minecraft:apple"},{Slot:17b,Count:1b,id:"minecraft:sugar"},{Slot:24b,Count:1b,id:"minecraft:apple"},{Slot:25b,Count:1b,id:"minecraft:sugar"},{Slot:26b,Count:1b,id:"minecraft:apple"},{Slot:33b,Count:1b,id:"minecraft:sugar"},{Slot:34b,Count:1b,id:"minecraft:apple"},{Slot:35b,Count:1b,id:"minecraft:sugar"}]}] cppCraft 30011
replaceitem entity @a[scores={cppCraft=30011}] inventory.16 minecraft:apple{display:{LocName:"cpp.item.toffee_apple"},ench:[{id:999s}]} 4

scoreboard players set @a[nbt={Inventory:[{Slot:15b,Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:16b,Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:17b,Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:24b,Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:26b,Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:33b,Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:34b,Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:35b,Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}}]}] cppCraft 30013
replaceitem entity @a[scores={cppCraft=30013}] inventory.16 minecraft:enchanted_golden_apple

scoreboard players set @a[scores={cppCraft=30011..30013}] cppClearslot 111101111
#30201-30216	饮品
execute as @a[nbt={Inventory:[{Slot:25b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]}] run function cpp:craft/food/potion


###	C 附魔书	###
#40001-40070
execute as @a[advancements={minecraft:story/enchant_item=true},level=30..,nbt={Inventory:[{Slot:25b,id:"minecraft:book",Count:1b},{Slot:34b,id:"minecraft:lapis_lazuli",Count:3b}]}] run function cpp:craft/enchant/normal

execute as @a[advancements={minecraft:story/enchant_item=true},level=40..,nbt={Inventory:[{Slot:25b,id:"minecraft:enchanted_book",Count:1b}]}] run function cpp:craft/enchant/high4
execute as @a[advancements={minecraft:story/enchant_item=true},level=50..,nbt={Inventory:[{Slot:25b,id:"minecraft:enchanted_book",Count:1b}]}] run function cpp:craft/enchant/high5

advancement grant @a[scores={cppCraft=40000..42004}] only cpp:enchant


###	D 盔甲与工具	###
execute as @a[nbt={Inventory:[{Slot:26b,id:"minecraft:coal",Count:1b}]}] run function cpp:craft/armor/coal
execute as @a[nbt={Inventory:[{Slot:26b,id:"minecraft:redstone",Count:1b}]}] run function cpp:craft/armor/redstone
execute as @a[nbt={Inventory:[{Slot:26b,id:"minecraft:lapis_lazuli",Count:1b}]}] run function cpp:craft/armor/lapis
execute as @a[nbt={Inventory:[{Slot:26b,id:"minecraft:quartz",Count:1b}]}] run function cpp:craft/armor/quartz
execute as @a[nbt={Inventory:[{Slot:26b,id:"minecraft:emerald",Count:1b}]}] run function cpp:craft/armor/emerald
execute as @a[nbt={Inventory:[{Slot:26b,tag:{display:{LocName:"cpp.item.pumande_gem"}},Count:1b}]}] run function cpp:craft/armor/pumande_armors
scoreboard players set @a[scores={cppCraft=50001..50008}] cppClearslot 101110111
scoreboard players set @a[scores={cppCraft=50011..50018}] cppClearslot 111100101
scoreboard players set @a[scores={cppCraft=50021..50028}] cppClearslot 111100000
scoreboard players set @a[scores={cppCraft=50031..50038}] cppClearslot 101100000

execute as @a[nbt={Inventory:[{Slot:16b,tag:{display:{LocName:"cpp.item.pumande_gem"}},Count:1b}]}] run function cpp:craft/armor/pumande_tools

##	状态效果	##
effect give @a[nbt={Inventory:[{Slot:103b,tag:{display:{LocName:"cpp.item.pumande_helmet"}}}]}] minecraft:night_vision 12 0 true
effect give @a[nbt={Inventory:[{Slot:102b,tag:{display:{LocName:"cpp.item.pumande_chestplate"}}}]}] minecraft:resistance 12 0 true
effect give @a[nbt={Inventory:[{Slot:101b,tag:{display:{LocName:"cpp.item.pumande_leggings"}}}]}] minecraft:fire_resistance 12 0 true
effect give @a[nbt={Inventory:[{Slot:100b,tag:{display:{LocName:"cpp.item.pumande_boots"}}}]}] minecraft:speed 12 0 true

effect give @a[nbt={SelectedItem:{tag:{Tags:["cpp_strength"]}}}] minecraft:strength 12 1 true
effect give @a[nbt={SelectedItem:{tag:{Tags:["cpp_haste"]}}}] minecraft:haste 12 1 true

#普曼德剑	群体伤害
execute at @a[nbt={SelectedItem:{tag:{display:{LocName:"cpp.item.pumande_sword"}}}},scores={cppSword=1..}] run effect give @e[type=!player,distance=..4] wither 3 4
scoreboard players set @a cppSword 0

#普曼德斧	连锁砍树
execute at @a[nbt={SelectedItem:{tag:{display:{LocName:"cpp.item.pumande_axe"}}}},scores={cppAxe=1..}] run function cpp:sys/cut_tree_init
scoreboard players set @a cppAxe 0
execute as @e[tag=cpp_tree,nbt={Age:1s}] at @s run function cpp:sys/cut_tree

#普曼德镐	区域破坏
execute at @a[nbt={SelectedItem:{tag:{display:{LocName:"cpp.item.pumande_pickaxe"}}}},scores={cppPickaxe=1..}] run execute as @e[type=item,distance=..6,nbt={Age:1s}] at @s run function cpp:sys/area_destroy
scoreboard players set @a cppPickaxe 0

#普曼德锹	连锁挖砂砾
execute at @a[nbt={SelectedItem:{tag:{display:{LocName:"cpp.item.pumande_shovel"}}}},scores={cppShovel=1..}] run function cpp:sys/cut_gravel_init
scoreboard players set @a cppShovel 0
execute as @e[tag=cpp_gravel] at @s run function cpp:sys/cut_gravel

#普曼德锄	区域耕地
execute at @a[nbt={SelectedItem:{tag:{display:{LocName:"cpp.item.pumande_hoe"}}}},scores={cppHoe=1..}] run function cpp:sys/pumande_hoe
scoreboard players set @a cppHoe 0

##	切换模式	##
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.pumande_sword"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.pumande_sword_closed"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.pumande_sword_closed"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.pumande_sword"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.pumande_axe"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.pumande_axe_closed"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.pumande_axe_closed"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.pumande_axe"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.pumande_pickaxe"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.pumande_pickaxe_closed"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.pumande_pickaxe_closed"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.pumande_pickaxe"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.pumande_shovel"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.pumande_shovel_closed"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.pumande_shovel_closed"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.pumande_shovel"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.pumande_hoe"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.pumande_hoe_closed"}}},Age:2s}
execute as @e[type=item,nbt={Item:{tag:{display:{LocName:"cpp.item.pumande_hoe_closed"}}},Age:1s}] run data merge entity @s {Item:{tag:{display:{LocName:"cpp.item.pumande_hoe"}}},Age:2s}


###	E 绘画	###
#60001-60016	画
execute as @a[nbt={Inventory:[{Slot:25b,id:"minecraft:painting",Count:1b}]}] run function cpp:craft/paintings


###	F 头饰	###
#70101-70156	头饰和称号系统
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]}] run function cpp:craft/head_and_title


###	G 杂项	###
#80001-80009	方块转化器
execute as @a[nbt={Inventory:[{Slot:25b,tag:{display:{LocName:"cpp.item.converter_core"}},Count:1b}]}] run function cpp:craft/misc/converter

execute as @e[type=shulker,tag=cpp_converter_quar] at @s if block ~ ~1 ~ minecraft:netherrack run scoreboard players add @s cppTicks 1
execute as @e[type=shulker,tag=cpp_converter_coal] at @s if block ~ ~1 ~ minecraft:stone run scoreboard players add @s cppTicks 1
execute as @e[type=shulker,tag=cpp_converter_iron] at @s if block ~ ~1 ~ minecraft:coal_ore run scoreboard players add @s cppTicks 1
execute as @e[type=shulker,tag=cpp_converter_gold] at @s if block ~ ~1 ~ minecraft:iron_ore run scoreboard players add @s cppTicks 1
execute as @e[type=shulker,tag=cpp_converter_diam] at @s if block ~ ~1 ~ minecraft:gold_ore run scoreboard players add @s cppTicks 1
execute as @e[type=shulker,tag=cpp_converter_lapi] at @s if block ~ ~1 ~ minecraft:clay run scoreboard players add @s cppTicks 1
execute as @e[type=shulker,tag=cpp_converter_reds] at @s if block ~ ~1 ~ minecraft:lapis_ore run scoreboard players add @s cppTicks 1
execute as @e[type=shulker,tag=cpp_converter_emer] at @s if block ~ ~1 ~ minecraft:redstone_ore run scoreboard players add @s cppTicks 1
execute as @e[type=shulker,tag=cpp_converter_glow] at @s if block ~ ~1 ~ minecraft:redstone_block run scoreboard players add @s cppTicks 1
execute as @e[type=shulker,scores={cppTicks=6000..}] run scoreboard players add @s cppLevel 1
scoreboard players remove @e[type=shulker,scores={cppTicks=6000..}] cppTicks 6000

execute as @e[type=shulker,scores={cppLevel=1..}] run scoreboard players add @s cppAge 1
execute at @e[type=shulker,tag=cpp_converter_quar,scores={cppLevel=1..}] run setblock ~ ~1 ~ nether_quartz_ore
execute at @e[type=shulker,tag=cpp_converter_coal,scores={cppLevel=1..}] run setblock ~ ~1 ~ coal_ore
execute at @e[type=shulker,tag=cpp_converter_iron,scores={cppLevel=1..}] run setblock ~ ~1 ~ iron_ore
execute at @e[type=shulker,tag=cpp_converter_gold,scores={cppLevel=1..}] run setblock ~ ~1 ~ gold_ore
execute at @e[type=shulker,tag=cpp_converter_diam,scores={cppLevel=1..}] run setblock ~ ~1 ~ diamond_ore
execute at @e[type=shulker,tag=cpp_converter_lapi,scores={cppLevel=1..}] run setblock ~ ~1 ~ lapis_ore
execute at @e[type=shulker,tag=cpp_converter_reds,scores={cppLevel=1..}] run setblock ~ ~1 ~ redstone_ore
execute at @e[type=shulker,tag=cpp_converter_emer,scores={cppLevel=1..}] run setblock ~ ~1 ~ emerald_ore
execute at @e[type=shulker,tag=cpp_converter_glow,scores={cppLevel=1..}] run setblock ~ ~1 ~ glowstone
execute as @e[type=shulker,scores={cppLevel=1..}] run scoreboard players operation @s cppLevel -= @s cppAge

#附魔之瓶
execute as @a[level=1..,nbt={Inventory:[{Slot:25b,id:"minecraft:hopper"},{Slot:34b,Count:1b,id:"minecraft:glass_bottle"}]}] run function cpp:craft/misc/xp_bottle
execute as @a[level=19..,nbt={Inventory:[{Slot:25b,id:"minecraft:hopper"},{Slot:34b,Count:64b,id:"minecraft:glass_bottle"}]}] run function cpp:craft/misc/xp_bottle64

#钢粉
execute as @a[nbt={Inventory:[{Slot:16b,tag:{display:{LocName:"cpp.item.carbon_dust"}}},{Slot:24b,tag:{display:{LocName:"cpp.item.carbon_dust"}}},{Slot:25b,tag:{display:{LocName:"cpp.item.iron_dust"}}},{Slot:26b,tag:{display:{LocName:"cpp.item.carbon_dust"}}},{Slot:34b,tag:{display:{LocName:"cpp.item.carbon_dust"}}}]}] run function cpp:craft/misc/steel_dust

#81003	下界之星
scoreboard players set @a[nbt={Inventory:[{Slot:15b,tag:{display:{LocName:"cpp.item.nether_star_shard"}}},{Slot:16b,tag:{display:{LocName:"cpp.item.nether_star_shard"}}},{Slot:17b,tag:{display:{LocName:"cpp.item.nether_star_shard"}}},{Slot:24b,tag:{display:{LocName:"cpp.item.nether_star_shard"}}},{Slot:25b,tag:{display:{LocName:"cpp.item.nether_star_shard"}}},{Slot:26b,tag:{display:{LocName:"cpp.item.nether_star_shard"}}},{Slot:33b,tag:{display:{LocName:"cpp.item.nether_star_shard"}}},{Slot:34b,tag:{display:{LocName:"cpp.item.nether_star_shard"}}},{Slot:35b,tag:{display:{LocName:"cpp.item.nether_star_shard"}}}]}] cppCraft 81003
replaceitem entity @a[scores={cppCraft=81003}] inventory.16 minecraft:nether_star

#81004-81007	压缩
execute as @a[nbt={Inventory:[{Slot:25b,id:"minecraft:glass_bottle",Count:1b}]}] run function cpp:craft/misc/heap
execute as @e[type=potion,nbt={Potion:{id:"minecraft:lingering_potion"}}] at @s run function cpp:sys/heap

#82001-82016	生物学-树种
execute as @a[nbt={Inventory:[{Slot:16b,id:"minecraft:bone_block"}]}] run function cpp:craft/misc/seedling
execute as @e[type=parrot,tag=cpp_seedling] at @s run function cpp:sys/seedling

scoreboard players set @a[scores={cppCraft=81003..82016}] cppClearslot 111101111

###	清除模块	###
replaceitem entity @a[scores={cppClearslot=100000000..}] inventory.6 minecraft:air
scoreboard players remove @a[scores={cppClearslot=100000000..}] cppClearslot 100000000
replaceitem entity @a[scores={cppClearslot=10000000..}] inventory.7 minecraft:air
scoreboard players remove @a[scores={cppClearslot=10000000..}] cppClearslot 10000000
replaceitem entity @a[scores={cppClearslot=1000000..}] inventory.8 minecraft:air
scoreboard players remove @a[scores={cppClearslot=1000000..}] cppClearslot 1000000
replaceitem entity @a[scores={cppClearslot=100000..}] inventory.15 minecraft:air
scoreboard players remove @a[scores={cppClearslot=100000..}] cppClearslot 100000
replaceitem entity @a[scores={cppClearslot=10000..}] inventory.16 minecraft:air
scoreboard players remove @a[scores={cppClearslot=10000..}] cppClearslot 10000
replaceitem entity @a[scores={cppClearslot=1000..}] inventory.17 minecraft:air
scoreboard players remove @a[scores={cppClearslot=1000..}] cppClearslot 1000
replaceitem entity @a[scores={cppClearslot=100..}] inventory.24 minecraft:air
scoreboard players remove @a[scores={cppClearslot=100..}] cppClearslot 100
replaceitem entity @a[scores={cppClearslot=10..}] inventory.25 minecraft:air
scoreboard players remove @a[scores={cppClearslot=10..}] cppClearslot 10
replaceitem entity @a[scores={cppClearslot=1..}] inventory.26 minecraft:air
scoreboard players set @a cppClearslot 0
scoreboard players set @a cppCraft 0
scoreboard players set @e[type=hopper_minecart] cppCraft 0
kill @e[tag=cpp_dead]


##	漂白	##
tag @e[type=item,nbt={Item:{id:"minecraft:white_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:magenta_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:light_blue_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:yellow_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:lime_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:pink_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:light_gray_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:cyan_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:purple_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:brown_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:green_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass"}}] add cpp_glass
tag @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass"}}] add cpp_glass
execute as @e[tag=cpp_glass] at @s if block ~ ~ ~ minecraft:cauldron[level=3] run function cpp:bleach/glass3
execute as @e[tag=cpp_glass] at @s if block ~ ~ ~ minecraft:cauldron[level=2] run function cpp:bleach/glass2
execute as @e[tag=cpp_glass] at @s if block ~ ~ ~ minecraft:cauldron[level=1] run function cpp:bleach/glass1

tag @e[type=item,nbt={Item:{id:"minecraft:white_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:orange_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:magenta_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:light_blue_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:yellow_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:lime_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:pink_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:gray_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:light_gray_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:cyan_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:purple_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:blue_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:brown_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:green_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:red_terracotta"}}] add cpp_terracotta
tag @e[type=item,nbt={Item:{id:"minecraft:black_terracotta"}}] add cpp_terracotta
execute as @e[tag=cpp_terracotta] at @s if block ~ ~ ~ minecraft:cauldron[level=3] run function cpp:bleach/terracotta3
execute as @e[tag=cpp_terracotta] at @s if block ~ ~ ~ minecraft:cauldron[level=2] run function cpp:bleach/terracotta2
execute as @e[tag=cpp_terracotta] at @s if block ~ ~ ~ minecraft:cauldron[level=1] run function cpp:bleach/terracotta1

##	加速	##
execute as @a at @s if block ~ ~-1 ~ minecraft:smooth_stone run effect give @s minecraft:speed 1 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:smooth_sandstone run effect give @s minecraft:speed 1 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:smooth_red_sandstone run effect give @s minecraft:speed 1 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:smooth_quartz run effect give @s minecraft:speed 1 3 true

##	生成高压爬行者，约10%	##
tag @e[sort=random,limit=3,type=creeper,tag=!cpp_mob_checker] add cpp_mob_checker
data merge entity @e[sort=random,limit=1,type=creeper,tag=!cpp_mob_checker] {Tags:["cpp_mob_checker"],powered:1}

##	物品无敌	##
data merge entity @e[limit=1,type=item,nbt={Age:1s,Item:{id:"minecraft:totem_of_undying"}}] {Invulnerable:1b}
data merge entity @e[limit=1,type=item,nbt={Age:1s,Item:{id:"minecraft:nether_star"}}] {Invulnerable:1b}
data merge entity @e[limit=1,type=item,nbt={Age:1s,Item:{id:"minecraft:dragon_egg"}}] {Invulnerable:1b}

function cpp:villager/main
execute as @e[type=item,nbt={Age:1s,Item:{id:"minecraft:leather_boots"}}] store result entity @s Item.tag.Damage short 1 run data get entity @s item.tag.Damage
