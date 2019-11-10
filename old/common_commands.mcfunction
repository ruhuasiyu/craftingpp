================================== 出生点命令 ==================================
召唤铁傀儡、雪傀儡、鸟
execute @e[tag=vgolem] ~ ~ ~ summon villager_golem
execute @e[tag=sgolem] ~ ~ ~ summon snowman
execute @e[tag=bird] ~ ~ ~ summon bat ~ ~ ~ {Silent:1,ActiveEffects:[{Id:14,ShowParticles:0b,Duration:999999}],Passengers:[{id:minecraft:chicken}]}

==================================    银行    ===================================
=====	新手礼包
scoreboard objectives add onceGive dummy 新手奖励
setblock ~ ~ ~ wall_sign 4 replace {Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"右击领取新手礼包\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/setblock ~ ~-4 ~ redstone_torch\"}}",Text3:"{\"text\":\"共 $100\",\"color\":\"dark_blue\"}",Text4:"{\"text\":\"\"}"}


setblock ~ ~ ~ wall_sign 4 replace {Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"右击领取新手礼包\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/kill @s\"}}",Text3:"{\"text\":\"共 100 钻石\",\"color\":\"dark_blue\"}",Text4:"{\"text\":\"\"}"}


scoreboard players add @a onceGive 0
scoreboard players add @p[score_onceGive=0] CK 100
scoreboard players add @p[score_onceGive=0] onceGive 1
=====	换零
summon villager ~ ~.5 ~ {Rotation:[90f,0f],NoAI:true,Invulnerable:true,CustomName:"换零",CustomNameVisible:true,Profession:1,Silent:true,Offers:{Recipes:[
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:emerald,Count:9},sell:{id:minecraft:emerald_block,Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:emerald_block,Count:1b},sell:{id:minecraft:emerald,Count:9}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:emerald,Count:1b},sell:{id:minecraft:paper,Count:10b,tag:{ench:[{id:999}],display:{Name:"一元"}}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:paper,Count:10b,tag:{ench:[{id:999}],display:{Name:"一元"}}},sell:{id:minecraft:emerald,Count:1b}}]}}

summon villager ~ ~.5 ~ {Rotation:[90f,0f],NoAI:true,Invulnerable:true,CustomName:"换零",CustomNameVisible:true,Profession:1,Silent:true,Offers:{Recipes:[{maxUses:99999999,rewardExp:0b,buy:{id:"minecraft:emerald",Count:9},sell:{id:"minecraft:emerald_block",Count:1b}},{maxUses:99999999,rewardExp:0b,buy:{id:"minecraft:emerald_block",Count:1b},sell:{id:"minecraft:emerald",Count:9}},{maxUses:99999999,rewardExp:0b,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:paper",Count:10b,tag:{ench:[{}],display:{Name:"一元"}}}},{maxUses:99999999,rewardExp:0b,buy:{id:"minecraft:paper",Count:10b,tag:{ench:[{}],display:{Name:"一元"}}},sell:{id:"minecraft:emerald",Count:1b}}]}}

give @p paper 1 0 {ench:[{id:999s}],display:{Name:"一元"}}

=====	存钱(1绿宝石=$10)
testfor @a[x=209,y=64,z=239,dx=6,dy=6,dz=6]
tellraw @a[x=209,y=64,z=239,dx=6,dy=6,dz=6] {"text":"请将绿宝石逐个投至粉色区域，每个价值$10\n请将绿宝石块逐个投至紫色区域，每个价值$90","color":"yellow"}
tellraw @p {"text":"","color":"yellow"}
scoreboard players add @p CK 10

=====	取钱
summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[
{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"tellraw @p[r=4,score_CK=9] {\\\\\\\"text\\\\\\\":\\\\\\\"余额不足\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"red\\\\\\\"}\\\"}}\",
Text2:\"{\\\"text\\\":\\\"兑换绿宝石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:emerald\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players add @p[r=4,score_CK=9] CK 10 \\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"}}\"}"},
{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"tellraw @p[r=4,score_CK=89] {\\\\\\\"text\\\\\\\":\\\\\\\"余额不足\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"red\\\\\\\"}\\\"}}\",
Text2:\"{\\\"text\\\":\\\"兑换绿宝石块\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:emerald_block\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players add @p[r=4,score_CK=89] CK 90 \\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"}}\"}"},
{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}
summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 2 replace {Text1:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"tellraw @p[r=4,score_CK=9] {\\\\\\\"text\\\\\\\":\\\\\\\"余额不足\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"red\\\\\\\"}\\\"}}\",Text2:\"{\\\"text\\\":\\\"兑换绿宝石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:emerald\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players add @p[r=4,score_CK=9] CK 10 \\\"},\\\"color\\\":\\\"dark_blue\\\"}\",Text4:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"}}\"}"},{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 2 replace {Text1:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"tellraw @p[r=4,score_CK=89] {\\\\\\\"text\\\\\\\":\\\\\\\"余额不足\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"red\\\\\\\"}\\\"}}\",Text2:\"{\\\"text\\\":\\\"兑换绿宝石块\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:emerald_block\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players add @p[r=4,score_CK=89] CK 90 \\\"},\\\"color\\\":\\\"dark_blue\\\"}\",Text4:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"}}\"}"},{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}


setblock ~2 ~-1 ~ wall_sign 2 replace {
Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @p[r=4,score_CK=9] {\\\"text\\\":\\\"余额不足\\\",\\\"color\\\":\\\"red\\\"}\"}}",
Text2:"{\"text\":\"兑换绿宝石\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[score_CK_min=10] minecraft:emerald\"},\"color\":\"dark_blue\"}",
Text3:"{\"text\":\"$10\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @p[r=4,score_CK=9] CK 10 \"},\"color\":\"dark_blue\"}",
Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=10] CK 10\"}}"}


give @s diamond_helmet 1 0 {AttributeModifiers:[{Operation:0,Amount:3,AttributeName:"generic.armor",Name:"feet_armor",UUIDLeast:1004,UUIDMost:520,Slot:"head"},{Operation:0,Amount:2,AttributeName:"generic.armorToughness",Name:"feet_armorToughness",UUIDLeast:1005,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.maxHealth",Name:"feet_maxHealth",UUIDLeast:1006,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.luck",Name:"feet_luck",UUIDLeast:1007,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.knockbackResistance",Name:"feet_knockbackResistance",UUIDLeast:1008,UUIDMost:520,Slot:"mainhand"},{Operation:0,Amount:0,AttributeName:"generic.movementSpeed",Name:"feet_movementSpeed",UUIDLeast:1009,UUIDMost:520,Slot:"offhand"}]}



=====	利息设置
基准利率为25%%,递推增加5%%;每日利率±1%%
scoreboard objectives add CK dummy 存款
scoreboard objectives setdisplay sidebar CK
scoreboard objectives add temp dummy
scoreboard players set #bankFloatRate1 CK 25
summon armor_stand ~ ~0.5 ~ {Tags:["rd"],NoGravity:true}
execute @r[type=armor_stand,r=6,tag=rd] ~ ~ ~ setblock ~ ~-1 ~ redstone_block
execute @e[type=armor_stand,r=6,tag=rd] ~ ~ ~ setblock ~ ~-1 ~ air
scoreboard players remove #bankFloatRate1 CK 2
summon falling_block ~ ~1 ~ {Block:stone,Time:1,Passengers:[{id:minecraft:falling_block,Block:redstone_block,Time:1,Passengers:[{id:minecraft:falling_block,Block:activator_rail,Time:1,Passengers:[
{id:minecraft:commandblock_minecart,Command:scoreboard players add #bankFloatRate1 CK 1},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankFloatRate2 CK 5},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankFloatRate3 CK 10},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankFloatRate4 CK 15},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankFloatRate5 CK 20},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankFloatRate2 CK += #bankFloatRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankFloatRate3 CK += #bankFloatRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankFloatRate4 CK += #bankFloatRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankFloatRate5 CK += #bankFloatRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankRate1 CK 10000},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankRate2 CK 10000},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankRate3 CK 10000},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankRate4 CK 10000},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankRate5 CK 10000},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankRate1 CK /= #bankFloatRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankRate2 CK /= #bankFloatRate2 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankRate3 CK /= #bankFloatRate3 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankRate4 CK /= #bankFloatRate4 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankRate5 CK /= #bankFloatRate5 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a temp = @a CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a[score_CK=999] temp /= #bankRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a[score_CK=9999,score_CK_min=1000] temp /= #bankRate2 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a[score_CK=99999,score_CK_min=10000] temp /= #bankRate3 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a[score_CK=999999,score_CK_min=100000] temp /= #bankRate4 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a[score_CK_min=1000000] temp /= #bankRate5 CK},
{id:minecraft:commandblock_minecart,Command:tellraw @a [{"text":"今日基准利率为：","color":"yellow"},{"score":{"name":"#bankFloatRate1","objective":"CK"},"color":"gold"},{"text":"%%"}]},
{id:minecraft:commandblock_minecart,Command:tellraw @a [{"text":"今日利息已发放，共计：","color":"yellow"},{"score":{"name":"*","objective":"temp"},"color":"gold"},{"text":"元","color":"yellow"}]},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a CK += @a temp},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~ ~1 command_block 0 replace {Command:fill ~ ~-2 ~-1 ~ ~ ~ air}},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~-1 ~1 redstone_block},
{id:minecraft:commandblock_minecart,Command:kill @e[type=commandblock_minecart,r=1]}]}]}]}

====================================艺术市场====================================
====	东展厅
凋灵
半身像
阿尔巴尼亚人
Creebet
漫步者
库尔贝
头骨与玫瑰
火柴
植物
炸弹
燃烧的头骨
猪的头像
虚空
阿兹特克2
烤肉串
池塘
骷髅
日落
荒地
阿兹特克
金刚
大海
格雷姆
指针
比武者
Stage

testfor @a[x=225,y=63,z=236,dx=50,dy=9,dz=28]
tellraw @a[x=225,y=63,z=236,dx=50,dy=9,dz=28]
[{"text":"欢迎来到美术馆！\n","color":"yellow"},
{"text":"东展厅展出的是Kristoffer Zetterstrand的作品\n","color":"light_purple"},
{"text":"西展厅展出的是一些世界名画\n","color":"light_purple"},
{"text":"您还可以购买它们的仿制品留着纪念","color":"red"}]
summon painting 257 65 251 {Facing:1b,Motive:"Pointer"}

====	西展厅
自由引导人民	欧仁·德拉克罗瓦	1830
莫奈花园		克劳德·莫奈		~1870
日出·印象		克劳德·莫奈		1872
向日葵			文森特·威廉·梵高	1888
星夜			文森特·威廉·梵高	1889
呐喊			爱德华·蒙克		1893
拾穗者			让·弗朗索瓦·米勒	1857
蒙娜丽莎		奥纳多·达·芬奇	1504
最后的晚餐		奥纳多·达·芬奇	1498
落霞孤鹜图		唐寅				明代
竹石图			归庄				清代
春	2008/03/17
夏	2015/05/28
秋	2014/11/29
冬	2015/01/28

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"呐喊\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：德拉克罗瓦\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=120] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"1/12\\\"]}},Damage:10000s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"2/12\\\"]}},Damage:10001s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"3/12\\\"]}},Damage:10002s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"4/12\\\"]}},Damage:10003s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"5/12\\\"]}},Damage:10004s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"6/12\\\"]}},Damage:10005s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"7/12\\\"]}},Damage:10006s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"8/12\\\"]}},Damage:10007s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"9/12\\\"]}},Damage:10008s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"10/12\\\"]}},Damage:10009s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"11/12\\\"]}},Damage:10010s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"呐喊\\\",Lore:[\\\"12/12\\\"]}},Damage:10011s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1893\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=120] CK 120 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$120\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"蒙娜丽莎\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：达·芬奇\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"蒙娜丽莎\\\",Lore:[\\\"1/6\\\"]}},Damage:10012s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"蒙娜丽莎\\\",Lore:[\\\"2/6\\\"]}},Damage:10013s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"蒙娜丽莎\\\",Lore:[\\\"3/6\\\"]}},Damage:10014s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"蒙娜丽莎\\\",Lore:[\\\"4/6\\\"]}},Damage:10015s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"蒙娜丽莎\\\",Lore:[\\\"5/6\\\"]}},Damage:10016s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"蒙娜丽莎\\\",Lore:[\\\"6/6\\\"]}},Damage:10017s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1504\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"最后的晚餐\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：达·芬奇\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"最后的晚餐\\\",Lore:[\\\"1/6\\\"]}},Damage:10018s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"最后的晚餐\\\",Lore:[\\\"2/6\\\"]}},Damage:10019s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"最后的晚餐\\\",Lore:[\\\"3/6\\\"]}},Damage:10020s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"最后的晚餐\\\",Lore:[\\\"4/6\\\"]}},Damage:10021s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"最后的晚餐\\\",Lore:[\\\"5/6\\\"]}},Damage:10022s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"最后的晚餐\\\",Lore:[\\\"6/6\\\"]}},Damage:10023s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1498\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 5 replace {
Text1:"{\"text\":\"向日葵\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：文森特·梵高\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=120] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"1/12\\\"]}},Damage:10024s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"2/12\\\"]}},Damage:10025s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"3/12\\\"]}},Damage:10026s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"4/12\\\"]}},Damage:10027s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"5/12\\\"]}},Damage:10028s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"6/12\\\"]}},Damage:10029s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"7/12\\\"]}},Damage:10030s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"8/12\\\"]}},Damage:10031s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"9/12\\\"]}},Damage:10032s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"10/12\\\"]}},Damage:10033s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"11/12\\\"]}},Damage:10034s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"向日葵\\\",Lore:[\\\"12/12\\\"]}},Damage:10035s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1888\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=120] CK 120 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$120\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"日出·印象\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：克劳德·莫奈\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=120] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"1/12\\\"]}},Damage:10036s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"2/12\\\"]}},Damage:10037s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"3/12\\\"]}},Damage:10038s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"4/12\\\"]}},Damage:10039s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"5/12\\\"]}},Damage:10040s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"6/12\\\"]}},Damage:10041s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"7/12\\\"]}},Damage:10042s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"8/12\\\"]}},Damage:10043s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"9/12\\\"]}},Damage:10044s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"10/12\\\"]}},Damage:10045s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"11/12\\\"]}},Damage:10046s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"日出·印象\\\",Lore:[\\\"12/12\\\"]}},Damage:10047s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1872\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=120] CK 120 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$120\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"莫奈花园\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：克劳德·莫奈\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=120] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"1/12\\\"]}},Damage:10048s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"2/12\\\"]}},Damage:10049s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"3/12\\\"]}},Damage:10050s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"4/12\\\"]}},Damage:10051s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"5/12\\\"]}},Damage:10052s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"6/12\\\"]}},Damage:10053s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"7/12\\\"]}},Damage:10054s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"8/12\\\"]}},Damage:10055s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"9/12\\\"]}},Damage:10056s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"10/12\\\"]}},Damage:10057s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"11/12\\\"]}},Damage:10058s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"莫奈花园\\\",Lore:[\\\"12/12\\\"]}},Damage:10059s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"~1870\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=120] CK 120 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$120\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"春\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：未知\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"春\\\",Lore:[\\\"1/6\\\"]}},Damage:10060s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"春\\\",Lore:[\\\"2/6\\\"]}},Damage:10061s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"春\\\",Lore:[\\\"3/6\\\"]}},Damage:10062s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"春\\\",Lore:[\\\"4/6\\\"]}},Damage:10063s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"春\\\",Lore:[\\\"5/6\\\"]}},Damage:10064s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"春\\\",Lore:[\\\"6/6\\\"]}},Damage:10065s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"2008/03/17\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"冬\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：如花\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"冬\\\",Lore:[\\\"1/6\\\"]}},Damage:10066s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"冬\\\",Lore:[\\\"2/6\\\"]}},Damage:10067s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"冬\\\",Lore:[\\\"3/6\\\"]}},Damage:10068s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"冬\\\",Lore:[\\\"4/6\\\"]}},Damage:10069s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"冬\\\",Lore:[\\\"5/6\\\"]}},Damage:10070s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"冬\\\",Lore:[\\\"6/6\\\"]}},Damage:10071s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"2015/01/28\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"秋\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：如花\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"秋\\\",Lore:[\\\"1/6\\\"]}},Damage:10072s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"秋\\\",Lore:[\\\"2/6\\\"]}},Damage:10073s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"秋\\\",Lore:[\\\"3/6\\\"]}},Damage:10074s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"秋\\\",Lore:[\\\"4/6\\\"]}},Damage:10075s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"秋\\\",Lore:[\\\"5/6\\\"]}},Damage:10076s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"秋\\\",Lore:[\\\"6/6\\\"]}},Damage:10077s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"2014/11/29\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"夏\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：如花\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"夏\\\",Lore:[\\\"1/6\\\"]}},Damage:10078s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"夏\\\",Lore:[\\\"2/6\\\"]}},Damage:10079s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"夏\\\",Lore:[\\\"3/6\\\"]}},Damage:10080s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"夏\\\",Lore:[\\\"4/6\\\"]}},Damage:10081s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"夏\\\",Lore:[\\\"5/6\\\"]}},Damage:10082s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"夏\\\",Lore:[\\\"6/6\\\"]}},Damage:10083s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"2015/05/28\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 5 replace {
Text1:"{\"text\":\"星夜\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：文森特·梵高\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=120] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"1/12\\\"]}},Damage:10084s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"2/12\\\"]}},Damage:10085s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"3/12\\\"]}},Damage:10086s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"4/12\\\"]}},Damage:10087s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"5/12\\\"]}},Damage:10088s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"6/12\\\"]}},Damage:10089s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"7/12\\\"]}},Damage:10090s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"8/12\\\"]}},Damage:10091s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"9/12\\\"]}},Damage:10092s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"10/12\\\"]}},Damage:10093s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"11/12\\\"]}},Damage:10094s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"星夜\\\",Lore:[\\\"12/12\\\"]}},Damage:10095s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1889\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=120] CK 120 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$120\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"自由引导人民\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：德拉克罗瓦\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"自由引导人民\\\",Lore:[\\\"1/6\\\"]}},Damage:10096s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"自由引导人民\\\",Lore:[\\\"2/6\\\"]}},Damage:10097s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"自由引导人民\\\",Lore:[\\\"3/6\\\"]}},Damage:10098s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"自由引导人民\\\",Lore:[\\\"4/6\\\"]}},Damage:10099s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"自由引导人民\\\",Lore:[\\\"5/6\\\"]}},Damage:10100s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"自由引导人民\\\",Lore:[\\\"6/6\\\"]}},Damage:10101s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1830\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"拾穗者\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：让·米勒\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"拾穗者\\\",Lore:[\\\"1/6\\\"]}},Damage:10102s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"拾穗者\\\",Lore:[\\\"2/6\\\"]}},Damage:10103s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"拾穗者\\\",Lore:[\\\"3/6\\\"]}},Damage:10104s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"拾穗者\\\",Lore:[\\\"4/6\\\"]}},Damage:10105s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"拾穗者\\\",Lore:[\\\"5/6\\\"]}},Damage:10106s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"拾穗者\\\",Lore:[\\\"6/6\\\"]}},Damage:10107s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1857\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 5 replace {
Text1:"{\"text\":\"竹石图\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"作者：归庄\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=20] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"竹石图\\\",Lore:[\\\"1/2\\\"]}},Damage:10110s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"竹石图\\\",Lore:[\\\"2/2\\\"]}},Damage:10111s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"清代\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=20] CK 20 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"售价：$20\",\"color\":\"dark_blue\"}"}

======================================药店======================================
testfor @a[x=279,y=63,z=244,dx=15,dy=8,dz=12]
tellraw @a[x=279,y=63,z=244,dx=15,dy=8,dz=12] [{"text":"欢迎来到药店\n","color":"yellow"},
{"text":"您可以在这制作高级药水","color":"light_purple"}]
summon villager ~ ~1.5 ~ {Rotation:[270f,0f],NoAI:true,Invulnerable:true,CustomName:"药剂师",CustomNameVisible:true,Profession:true,Silent:true,Offers:{Recipes:[
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:fish,Damage:3s,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2970007,display:{Name:"水肺药水"},CustomPotionEffects:[{Id:13,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:magma_cream,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14719033,display:{Name:"抗火药水"},CustomPotionEffects:[{Id:12,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:golden_carrot,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2039710,display:{Name:"夜视药水"},CustomPotionEffects:[{Id:16,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:ender_pearl,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:8225168,display:{Name:"隐身药水"},CustomPotionEffects:[{Id:14,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:apple,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:15934242,display:{Name:"饱和药水"},CustomPotionEffects:[{Id:23,Duration:20}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:ghast_tear,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:13261736,display:{Name:"再生药水"},CustomPotionEffects:[{Id:10,Amplifier:1,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:sugar,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:8039619,display:{Name:"迅捷药水"},CustomPotionEffects:[{Id:1,Amplifier:1,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:diamond,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14073154,display:{Name:"急迫药水"},CustomPotionEffects:[{Id:3,Amplifier:1,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:rabbit_foot,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2226763,display:{Name:"跳跃药水"},CustomPotionEffects:[{Id:8,Amplifier:1,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:blaze_powder,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9511714,display:{Name:"力量药水"},CustomPotionEffects:[{Id:5,Amplifier:2,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:speckled_melon,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:16262179,display:{Name:"治疗药水"},CustomPotionEffects:[{Id:6,Amplifier:2}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:iron_ingot,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9913401,display:{Name:"抗性药水"},CustomPotionEffects:[{Id:11,Amplifier:2,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:golden_apple,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14841103,display:{Name:"提升药水"},CustomPotionEffects:[{Id:21,Amplifier:2,Duration:9600}]}}}
]}}

==================================    超市    ==================================
该市场可刷卡购买各类物品，囊括建材、农业、生物、装备等。

testfor @a[x=205,y=64,z=286,dx=90,dy=8,dz=48]
tellraw @a[x=205,y=64,z=286,dx=90,dy=8,dz=48] [{"text":"欢迎来到市场\n","color":"yellow"},
{"text":"101 出售沙土冰雪              102 出售下界、末地、遗迹建材\n","color":"light_purple"},
{"text":"103 出售石材、矿石            104 出售树苗\n","color":"green"},
{"text":"105 出售农作物，收购农作物等  106 出售染料，DIY烟花火箭和旗帜\n","color":"red"},
{"text":"107 出售花卉                   108-109 出售、制作动物和怪物\n","color":"blue"},
{"text":"110 出售食物                   111 出售、制作武器、工具、盔甲\n","color":"gold"},
{"text":"112 出售工具、附魔书\n","color":"light_purple"}]
setblock ~ ~ ~ wall_sign 5 replace {Text1:"{\"text\":\"\"}",
Text2:"{\"text\":\"购买鸟\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-4 ~ redstone_torch\"}}",
Text3:"{\"text\":\"$640\",\"color\":\"dark_blue\"}",Text4:"{\"text\":\"\"}"}
scoreboard players remove @p[score_CK_min=1] CK 1

====	101 沙土冰雪 12
灰化土		dirt:2				1
草方块		grass				1
菌丝		mycelium			10
粘土		clay				4
冰			ice					1
浮冰		packed_ice			2
雪块		snow				1
砂砾		gravel				2
沙子		sand				2
沙石		sandstone			2
红沙		sand:1				4
红沙石		red_sandstone		4

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买灰化土\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:dirt 1 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买草方块\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:grass\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买菌丝\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:mycelium\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买粘土\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:clay\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买冰\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:ice\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买浮冰\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:packed_ice\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买雪块\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:snow\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买砂砾\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:gravel\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买沙子\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:sand\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~9 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买沙石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:sandstone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~10 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买红沙\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:sand 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~11 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买红沙石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:red_sandstone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=285,y=64,z=288,dx=8,dy=5,dz=11]
tellraw @a[x=285,y=64,z=288,dx=8,dy=5,dz=11]  [{"text":"欢迎购买沙土冰雪\n","color":"yellow"},
{"text":"灰化土$1、草方块$1、菌丝$10、粘土$4、冰$1、浮冰$2、雪块$1\n","color":"light_purple"},
{"text":"砂砾$2、沙子/沙石$2、红沙/红沙石$4","color":"gold"}]

====	102 下界、末地、遗迹建材 9
岩浆块		magma				10
灵魂沙		soul_sand			2
地狱岩		netherrack			1
黑耀石		obsidian			16
萤石		glowstone			4
末地石		end_stone			2
末地石砖	end_bricks			2
海晶碎片	prismarine_shard	1
海晶砂粒	prismarine_crystals	2

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买岩浆块\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:magma\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买灵魂沙\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:soul_sand\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买地狱岩\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:netherrack\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买黑耀石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:obsidian\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买萤石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:glowstone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买末地石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:end_stone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买末地石砖\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:end_bricks\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买海晶碎片\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:prismarine_shard\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买海晶砂粒\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:prismarine_crystals\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=285,y=64,z=302,dx=8,dy=5,dz=8]
tellraw @a[x=285,y=64,z=302,dx=8,dy=5,dz=8]  [{"text":"欢迎购买下界、末地、遗迹建材\n","color":"yellow"},
{"text":"岩浆块$10、灵魂沙$2、地狱岩$1、黑耀石$16、萤石$4\n","color":"light_purple"},
{"text":"末地石/末地石砖$2、海晶碎片$1、海晶砂粒$2","color":"gold"}]

====	103 石材和矿石 12
圆石			cobblestone			1
石头			stone				1
石英块			quartz_block		4
藤蔓			vine				1
下界石英矿石	quartz_ore			10
煤矿石			coal_ore			10
红石矿石		redstone_ore		15
铁矿石			iron_ore			25
金矿石			gold_ore			36
绿宝石矿石		emerald_ore			35
青金石矿石		lapis_ore			75
钻石矿石		diamond_ore			100

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买圆石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:cobblestone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买石头\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:stone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买石英块\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:quartz_block\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买
藤蔓\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:vine\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买下界石英矿石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:quartz_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买煤矿石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:coal_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买红石矿石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=15] minecraft:redstone_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$15\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=15] CK 15\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买铁矿石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=25] minecraft:iron_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$25\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=25] CK 25\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买金矿石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=36] minecraft:gold_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$36\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=36] CK 36\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~9 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买绿宝石矿石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=35] minecraft:emerald_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$35\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=35] CK 35\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~10 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买青金石矿石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=75] minecraft:lapis_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$75\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=75] CK 75\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~11 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买钻石矿石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:diamond_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=285,y=64,z=313,dx=8,dy=5,dz=11]
tellraw @a[x=285,y=64,z=313,dx=8,dy=5,dz=11]  [{"text":"欢迎购买石材和矿石\n","color":"yellow"},
{"text":"圆石$1、石头$1、石英块$4、藤蔓$1\n","color":"light_purple"},
{"text":"下界石英矿石$10、煤矿石$10、红石矿石$15、铁矿石$25\n","color":"gold"},
{"text":"金矿石$36、绿宝石矿石$35、青金石矿石$75、钻石矿石$100","color":"green"}]

====	104 树苗 6
橡树树苗      sapling             16
云杉树苗      sapling:1           16
桦树树苗      sapling:2           16
丛林树苗      sapling:3           16
金合欢树苗    sapling:4           16
深色橡树树苗  sapling:5           16


summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买橡树树苗\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买云杉树苗\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买桦树树苗\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling 1 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买丛林树苗\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling 1 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买金合欢树苗\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling 1 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买深色橡树树苗\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling 1 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=285,y=64,z=327,dx=8,dy=5,dz=5]
tellraw @a[x=285,y=64,z=327,dx=8,dy=5,dz=5]  [{"text":"欢迎购买树苗，价格$16","color":"yellow"}]

====	105 农作物 12
小麦种子		wheat_seeds			1
可可豆			dye:3               5
仙人掌			cactus              16
棕色蘑菇		brown_mushroom      16
红色蘑菇		red_mushroom        16
甘蔗			reeds               320
胡萝卜			carrot              320
土豆			potato              320
甜菜种子		beetroot_seeds      320
南瓜种子		pumpkin_seeds       320
西瓜种子		melon_seeds         320
地狱疣			nether_wart         640
紫颂花			chorus_flower       640
骨块			bone_block			45

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买小麦种子\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:wheat_seeds\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-1 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买可可豆\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-2 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买仙人掌\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:cactus\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-3 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买棕色蘑菇\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:brown_mushroom\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-4 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买红色蘑菇\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:red_mushroom\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-5 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买甘蔗\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:reeds\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-6 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买胡萝卜\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:carrot\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-7 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买土豆\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:potato\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-8 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买甜菜种子\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:beetroot_seeds\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-9 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买南瓜种子\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:pumpkin_seeds\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-10 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买西瓜种子\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:melon_seeds\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-11 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买地狱疣\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:nether_wart\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-12 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买紫颂花\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:chorus_flower\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-18 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买骨块\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=45] minecraft:bone_block\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$45\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=45] CK 45\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=267,y=64,z=315,dx=8,dy=5,dz=18]
tellraw @a[x=267,y=64,z=315,dx=8,dy=5,dz=18]  [{"text":"欢迎购买和出售农作物\n","color":"yellow"},{"text":"小麦种子$1、可可豆$5、仙人掌/蘑菇$16、甘蔗$320\n","color":"light_purple"},{"text":"胡萝卜/土豆/甜菜种子/南瓜种子/西瓜种子$320\n","color":"gold"},{"text":"地狱疣/紫颂花$640、骨块$45\n","color":"green"},{"text":"收购小麦、土豆、胡萝卜等物品","color":"red"}]

summon villager ~ ~.5 ~ {NoAI:true,Invulnerable:true,CustomName:"收购商",CustomNameVisible:true,Profession:0s,Rotation:[270f,0f],Silent:true,Offers:{Recipes:[
{maxUses:99999999,buy:{id:minecraft:wheat,Count:18},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:potato,Count:15},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:carrot,Count:15},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:pumpkin,Count: 8},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:melon_block,Count: 7},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:porkchop,Count:14},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:chicken,Count:14},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:fish,Count: 5},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:leather,Count: 9},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:feather,Count:21},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:wool,Count:16},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:paper,Count:24},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:book,Count: 8},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:written_book,Count: 2},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:string,Count:15},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:coal,Count:16},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:rotten_flesh,Count:36},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:gold_ingot,Count: 8},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:iron_ingot,Count: 7},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:diamond,Count: 3},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:arrow,Count:64},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:flint,Count: 8},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:compass,Count: 1},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:nether_star,Count: 1},sell:{id:minecraft:emerald_block,Count:25}}]}}

====	106 染料 16
墨囊		dye:0	5
玫瑰红		dye:1	5
仙人掌绿	dye:2	5
可可豆		dye:3	5
青金石		dye:4	5
紫色染料	dye:5	5	紫=红+蓝
青色染料	dye:6	5	青=蓝+绿
淡灰色染料	dye:7	5	淡灰=灰+白
灰色染料	dye:8	5	灰=黑+白
粉红色染料	dye:9	5	粉=红+白
黄绿色染料	dye:10	5	黄绿=绿+白
蒲公英黄	dye:11	5
淡蓝色染料	dye:12	5	淡蓝=蓝+白
品红色染料	dye:13	5	品红=紫+粉
橙色染料	dye:14	5	橙=红+黄
骨粉		dye:15	5

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买墨囊\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~1 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买玫瑰红\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买仙人掌绿\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~3 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买可可豆\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~4 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买青金石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~5 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买紫色染料\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"紫=红+蓝\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~6 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买青色染料\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 6\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"青=蓝+绿\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~7 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买淡灰色染料\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 7\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"淡灰=灰+白\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~9 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买灰色染料\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 8\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"灰=黑+白\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~10 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买粉红色染料\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 9\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"粉=红+白\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~11 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买黄绿色染料\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"黄绿=绿+白\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~12 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买蒲公英黄\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 11\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~13 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买淡蓝色染料\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 12\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"淡蓝=蓝+白\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~14 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买品红色染料\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 13\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"品红=紫+粉\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~15 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买橙色染料\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 14\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"橙=红+黄\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~16 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买骨粉\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 15\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=236,y=64,z=315,dx=28,dy=5,dz=9]
tellraw @a[x=236,y=64,z=315,dx=28,dy=5,dz=9]  [{"text":"欢迎购买染料，价格$5\n你还可以在此DIY烟花火箭和旗帜","color":"yellow"}]

====	106A DIY烟花火箭 9
火药			gunpowder		4
火焰弹			fire_charge		10
金粒			gold_nugget		4
头颅			skull:3			100
羽毛			feather			4
钻石			diamond			40
萤石粉			glowstone_dust	1
纸				paper			1
15色烟花火箭	fireworks       50

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买火药\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:gunpowder\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买火焰弹\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:fire_charge\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买金粒\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:gold_nugget\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买头颅\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:skull 1 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买羽毛\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:feather\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买钻石\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=40] minecraft:diamond\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$40\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=40] CK 40\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买萤石粉\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:glowstone_dust\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买纸\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:paper\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买15色烟花火箭\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=50] minecraft:fireworks 1 0 {Fireworks:{Flight:3b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[11743532,2437522,3887386,14602026,14188952,8073150],FadeColors:[15435844,6719955,12801229,2651799,4312372,5320730,3887386,15790320,]}]}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$50\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=50] CK 50\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}


testfor @a[x=259,y=64,z=315,dx=5,dy=5,dz=9]
tellraw @a[x=259,y=64,z=315,dx=5,dy=5,dz=9]  [{"text":"欢迎DIY烟花火箭\n","color":"yellow"},
{"text":"火药+若干染料+火焰弹/金粒/头颅/羽毛+钻石/萤石粉=烟火之星\n","color":"light_purple"},
{"text":"烟火之星+染料=变色的烟火之星\n","color":"gold"},
{"text":"烟火之星+1-3火药+纸=烟花火箭\n","color":"green"},
{"text":"火焰弹/金粒/头颅/羽毛决定形状：大型球状/星型/爬行者脸型/爆裂型\n","color":"red"},
{"text":"钻石/萤石粉决定效果：闪烁/踪迹\n","color":"blue"}]
give @p[score_CK_min=50] minecraft:fireworks 1 0 {Fireworks:{Flight:3b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[11743532,2437522,3887386,14602026,14188952,8073150],FadeColors:[15435844,6719955,12801229,2651799,4312372,5320730,3887386,15790320,]}]}}

====	106B DIY旗帜 8
羊毛			wool			60/6
木棍			stick			1
藤蔓			vine			1
砖块			brick_block		5
爬行者的头		skull:4			500
凋灵骷髅头颅	skull:1			1000
滨菊			red_flower:8	5
附魔金苹果		golden_apple:1	3000

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买羊毛\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=60] minecraft:wool 6\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$60/6\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=60] CK 60\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~1 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买木棍\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:stick\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~2 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买藤蔓\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:vine\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~3 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买砖块\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:brick_block\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~4 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买爬行者的头\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=500] minecraft:skull 1 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$500\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=500] CK 500\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~5 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买凋灵骷髅头颅\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1000] minecraft:skull 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1000] CK 1000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~6 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买滨菊\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 8\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~7 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买附魔金苹果\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3000] minecraft:golden_apple 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3000] CK 3000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}


testfor @a[x=236,y=64,z=315,dx=5,dy=5,dz=9]
tellraw @a[x=236,y=64,z=315,dx=5,dy=5,dz=9]  [{"text":"欢迎DIY旗帜\n","color":"yellow"},
{"text":"旗帜由6羊毛+木棍合成，图案所需染料配方如下：\n","color":"light_purple"},
{"text":"顶底左右横竖斜条=3对应位置染料 竖条纹=左上2+右上2染料\n","color":"gold"},
{"text":"X形/十字形=对应位置5染料      中间圆形=中间1染料\n","color":"gold"},
{"text":"菱形=菱形4染料                  三角形=对应角落位置3染料\n","color":"gold"},
{"text":"半边=对应位置6染料              角落方形=对应位置1染料\n","color":"gold"},
{"text":"顶、底三角=对应位置3染料       顶、底波纹=对应位置^、V形3染料\n","color":"red"},
{"text":"方框=方框8染料                  波纹边框=藤蔓+染料\n","color":"red"},
{"text":"砖纹=砖块+染料                  顶、底深色渐变=倒、正铁塔4染料\n","color":"blue"},
{"text":"爬行者图案=爬行者的头+染料     骷髅图案=凋灵骷髅头颅+染料\n","color":"light_purple"},
{"text":"花朵图案=滨菊+染料              Mojang徽标=附魔金苹果+染料","color":"light_purple"}]

give @p banner 1 1 {BlockEntityTag:{Patterns:[{Pattern:sc,Color:11},{Pattern:tr,Color:11},{Pattern:hhb,Color:1},{Pattern:cs,Color:1},{Pattern:vh,Color:1},{Pattern:bo,Color:1}]}}
setblock ~4 ~2 ~3 wall_sign 4 replace {
Text1:"{\"text\":\"俄罗斯国旗\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~-3 ~-2 ~-3 {auto:1}\"}}",
Text2:"{\"text\":\"白底\",\"color\":\"white\"}",
Text3:"{\"text\":\"红左竖条\",\"color\":\"white\"}",
Text4:"{\"text\":\"蓝中竖条\",\"color\":\"white\"}"}
setblock ~3 ~2 ~3 wall_sign 4 replace {
Text1:"{\"text\":\"法国国旗\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~-2 ~-2 ~-3 {auto:1}\"}}",
Text2:"{\"text\":\"白底\",\"color\":\"white\"}",
Text3:"{\"text\":\"蓝顶横条\",\"color\":\"white\"}",
Text4:"{\"text\":\"红底横条\",\"color\":\"white\"}"}
setblock ~2 ~2 ~3 wall_sign 4 replace {
Text1:"{\"text\":\"美国国旗\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~-1 ~-2 ~-3 {auto:1}\"}}",
Text2:"{\"text\":\"红底\",\"color\":\"dark_red\"}",
Text3:"{\"text\":\"白竖条纹\",\"color\":\"dark_red\"}",
Text4:"{\"text\":\"蓝右上方块\",\"color\":\"dark_red\"}"}
setblock ~1 ~2 ~3 wall_sign 4 replace {
Text1:"{\"text\":\"英国国旗\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~-0 ~-2 ~-3 {auto:1}\"}}",
Text2:"{\"text\":\"蓝底白左斜条白右斜条\",\"color\":\"dark_blue\"}",
Text3:"{\"text\":\"红斜十字，白中横条\",\"color\":\"dark_blue\"}",
Text4:"{\"text\":\"白中竖条，红正十字\",\"color\":\"dark_blue\"}"}
setblock ~0 ~2 ~3 wall_sign 4 replace {
Text1:"{\"text\":\"中国国旗\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~-4 ~-2 ~-3 {auto:1}\"}}",
Text2:"{\"text\":\"红底黄正十字黄右顶方\",\"color\":\"dark_red\"}",
Text3:"{\"text\":\"红左半方形，红中竖条\",\"color\":\"dark_red\"}",
Text4:"{\"text\":\"红下半方形，红方框边\",\"color\":\"dark_red\"}"}

====	107 花卉 14

罂粟          red_flower          5
兰花          red_flower:1        5
绒球葱        red_flower:2        5
茜草花        red_flower:3        5
红色郁金香    red_flower:4        5
橙色郁金香    red_flower:5        5
白色郁金香    red_flower:6        5
粉色郁金香    red_flower:7        5
滨菊          red_flower:8        5
蒲公英        yellow_flower       5
向日葵        double_plant        10
丁香          double_plant:1      10
玫瑰丛        double_plant:4      10
牡丹          double_plant:5      10

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买罂粟\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买兰花\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买绒球葱\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买茜草花\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买红色郁金香\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买橙色郁金香\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买白色郁金香\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 6\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买粉色郁金香\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 7\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买滨菊\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 8\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~9 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买蒲公英\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:yellow_flower\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~10 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买向日葵\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:double_plant\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~11 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买丁香\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:double_plant 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~12 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买玫瑰丛\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:double_plant 1 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~13 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买牡丹\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:double_plant 1 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}


testfor @a[x=225,y=64,z=315,dx=9,dy=5,dz=18]
tellraw @a[x=225,y=64,z=315,dx=9,dy=5,dz=18]  [{"text":"欢迎购买花卉，小型花$5，大型花$10","color":"yellow"}]

====	108 动物 18
猪			pig				320
羊			sheep			320
牛			cow				320
鸡			chicken			320
兔子		rabbit			320
哞菇		mooshroom		320
狼			wolf			640
猫			ocelot			640
马			horse			640
驴			donkey			640
羊驼		llama			640

蝙蝠		bat				 10
鱿鱼		squid			 10
北极熊		polar_bear		 10
村民		villager		 80

雪傀儡		snowman			 10
铁傀儡		villager_golem	160
鸟			chicken+bat		640

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买猪\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:pig}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-1 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买羊\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:sheep}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-2 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买牛\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:cow}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-3 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买鸡\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:chicken}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-4 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买兔子\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:rabbit}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-5 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买哞菇\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:mooshroom}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-6 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买狼\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:wolf}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-7 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买猫\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:ocelot}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-8 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买马\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:horse}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-9 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买驴\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:donkey}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-10 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买羊驼\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:llama}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-11 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买蝙蝠\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:bat}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-12 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买鱿鱼\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:squid}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-13 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买北极熊\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:polar_bear}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-14 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买村民\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=80] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:villager}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-15 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买雪傀儡\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:[\\\\\\\"sgolem\\\\\\\"],Silent:1,LifeTicks:1},display:{Name:\\\\\\\"生成 雪傀儡\\\\\\\"}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-16 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买铁傀儡\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=160] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:[\\\\\\\"vgolem\\\\\\\"],Silent:1,LifeTicks:1},display:{Name:\\\\\\\"生成 铁傀儡\\\\\\\"}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$160\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=160] CK 160\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-17 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买鸟\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:[\\\\\\\"bird\\\\\\\"],Silent:1,LifeTicks:1},display:{Name:\\\\\\\"生成 鸟\\\\\\\"}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=206,y=64,z=287,dx=9,dy=5,dz=46]
tellraw @a[x=206,y=64,z=287,dx=9,dy=5,dz=46]  [{"text":"欢迎购买动物和刷怪蛋\n","color":"yellow"},
{"text":"蝙蝠/鱿鱼/北极熊/雪傀儡/僵尸/爬行者/蜘蛛/洞穴蜘蛛$10\n","color":"light_purple"},
{"text":"史莱姆/女巫/蠹虫/僵尸猪人/岩浆怪/烈焰人末影螨/守卫者$10\n","color":"gold"},
{"text":"骷髅/凋零骷髅$20、村民/末影人/唤魔者/卫道士$80\n","color":"green"},
{"text":"铁傀儡/恶魂/潜影贝$160、猪/羊/牛/鸡/兔子/哞菇$320\n","color":"red"},
{"text":"狼/猫/马/驴/羊驼/鸟/高压爬行者/远古守卫者$640\n","color":"blue"},
{"text":"你还可以在此制作刷怪蛋","color":"yellow"}]

give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:creeper,powered:1,display:{Name:["生成 高压爬行者"]}}}
give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:["sgolem"],Silent:1,LifeTicks:1},display:{Name:"生成 雪傀儡"}}
give @p[score_CK_min=160] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:["vgolem"],Silent:1,LifeTicks:1},display:{Name:"生成 铁傀儡"}}
give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:["bird"],Silent:1,LifeTicks:1},display:{Name:"生成 鸟"}}

====	109 怪物 21
僵尸		zombie				10
骷髅		skeleton			20
爬行者		creeper				10
高压爬行者	creeper				640
蜘蛛		spider				10
洞穴蜘蛛	cave_spider			10
史莱姆		slime				10
女巫		witch				10
蠹虫		silverfish			10

僵尸猪人	zombie_pigman		10
岩浆怪		magma_cube			10
烈焰人		blaze				10
凋零骷髅	wither_skeleton		20
恶魂		ghast				160

末影人		enderman			80
末影螨		endermite			10
潜影贝		shulker				160

守卫者		guardian			10
远古守卫者	elder_guardian		640
唤魔者		evocation_illager	80
卫道士		vindication_illager	80

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买僵尸\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:zombie}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~1 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买骷髅\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=20] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:skeleton}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$20\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=20] CK 20\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~2 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买爬行者\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:creeper}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~3 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买高压爬行者\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:creeper,powered:1},display:{Name:\\\\\\\"生成 高压爬行者\\\\\\\"}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~4 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买蜘蛛\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:spider}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~5 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买洞穴蜘蛛\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:cave_spider}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~6 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买史莱姆\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:slime}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~7 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买女巫\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:witch}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~8 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买蠹虫\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:silverfish}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~9 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买僵尸猪人\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:zombie_pigman}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~10 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买岩浆怪\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:magma_cube}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~11 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买烈焰人\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:blaze}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~12 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买凋零骷髅\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=20] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:wither_skeleton}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$20\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=20] CK 20\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~13 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买恶魂\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=160] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:ghast}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$160\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=160] CK 160\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~14 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买末影人\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=80] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:enderman}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~15 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买末影螨\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:endermite}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~16 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买潜影贝\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=160] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:shulker}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$160\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=160] CK 160\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~17 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买守卫者\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:guardian}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~18 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买远古守卫者\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:elder_guardian}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~19 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买唤魔者\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=80] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:evocation_illager}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~20 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买卫道士\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=80] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vindication_illager}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

====	110 食物 19
曲奇		cookie			2/3		2.4
苹果		apple			3/2		6.4
甜菜根		beetroot		5		2.2
面包		bread			3		11
烤土豆		baked_potato	4		12.2
南瓜派		pumpkin_pie		4		12.8

熟鱼		cooked_fish		3		11
熟鲑鱼		cooked_fish:1	5		15.6
熟兔肉		cooked_rabbit	3		11
熟猪排		cooked_porkchop	4		12.8
熟鸡肉		cooked_chicken	4		13.2
熟羊肉		cooked_mutton	5		15.6
牛排		cooked_beef		6		20.8

甜菜汤		beetroot_soup	3		13.2
蘑菇煲		mushroom_stew	3		13.2	
兔肉煲		rabbit_stew		6		22
蛋糕		cake			10		16.8
金苹果		golden_apple	330		13.6
附魔金苹果	golden_apple:1	3000	13.6

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买曲奇\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:cookie 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2/3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买苹果\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:apple 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3/2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买甜菜根\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:beetroot\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买面包\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:bread\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买烤土豆\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:baked_potato\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买南瓜派\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:pumpkin_pie\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买熟鱼\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:cooked_fish\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买熟鲑鱼\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:cooked_fish 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买熟兔肉\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:cooked_rabbit\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~9 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买熟猪排\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:cooked_porkchop\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~10 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买熟鸡肉\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:cooked_chicken\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~11 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买熟羊肉\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:cooked_mutton\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~12 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买牛排\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=6] minecraft:cooked_beef\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$6\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=6] CK 6\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~13 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买甜菜汤\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:beetroot_soup\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~14 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买蘑菇煲\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:mushroom_stew\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~15 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买兔肉煲\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=6] minecraft:rabbit_stew\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$6\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=6] CK 6\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~16 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买蛋糕\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:cake\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~17 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买金苹果\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=330] minecraft:golden_apple\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$330\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=330] CK 330\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~18 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买附魔金苹果\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3000] minecraft:golden_apple 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3000] CK 3000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=225,y=64,z=287,dx=9,dy=5,dz=18]
tellraw @a[x=225,y=64,z=287,dx=9,dy=5,dz=18] [{"text":"欢迎购买食物\n","color":"yellow"}]
tellraw @a[x=225,y=64,z=287,dx=9,dy=5,dz=18] [
{"text":"曲奇      $2/3  有效品质2.4    苹果      $3/2  有效品质6.4\n","color":"light_purple"},
{"text":"甜菜根    $1/2  有效品质2.2    面包      $3     有效品质11\n","color":"light_purple"},
{"text":"烤土豆    $4     有效品质12.2   南瓜派    $4     有效品质12.8\n","color":"light_purple"},
{"text":"熟鱼      $3     有效品质11     熟鲑鱼    $5     有效品质15.6\n","color":"green"},
{"text":"熟兔肉    $3     有效品质11     熟猪排    $4     有效品质12.8\n","color":"green"},
{"text":"熟鸡肉    $4     有效品质13.2   熟羊肉    $5     有效品质15.6\n","color":"green"},
{"text":"牛排      $6     有效品质20.8\n","color":"green"},
{"text":"甜菜汤    $3     有效品质13.2   蘑菇煲    $3     有效品质13.2\n","color":"red"},
{"text":"兔肉煲    $6     有效品质22     蛋糕      $10    有效品质16.8\n","color":"red"},
{"text":"金苹果    $330   有效品质13.6  附魔金苹果$3000 有效品质13.6","color":"blue"}]

====	111 武器、工具、盔甲 23
弓			bow						30
箭			arrow					8/8
铁斧		iron_axe				60
铁剑		iron_sword				90
钻石斧		diamond_axe				90
钻石剑		diamond_sword			120
铁锹		iron_shovel				50	
铁镐		iron_pickaxe			90
钻石镐		diamond_pickaxe			120
皮革裤子	leather_leggings		20
皮革外套	leather_chestplate		70
铁头盔		iron_helmet				40
铁胸甲		iron_chestplate			100
钻石胸甲	diamond_chestplate		160
链甲头盔	chainmail_helmet		50
链甲胸甲	chainmail_chestplate	110
链甲护腿	chainmail_leggings		90
链甲靴子	chainmail_boots			50

时运III钻石镐 diamond_pickaxe     1998
时运V李敏镐   diamond_pickaxe     8888
抢夺III钻石剑 diamond_sword       1998
抢夺V毕福剑   diamond_sword       6666
力量X麒麟弓   bow                 9999

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买弓\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=30] minecraft:bow\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$30\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=30] CK 30\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~1 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买箭\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=8] minecraft:arrow 8\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$8/8\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=8] CK 8\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买铁斧\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=60] minecraft:iron_axe\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$60\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=60] CK 60\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~3 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买铁剑\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:iron_sword\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~4 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买钻石斧\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:diamond_axe\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~5 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买钻石剑\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=120] minecraft:diamond_sword\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$120\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=120] CK 120\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~6 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买铁锹\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=50] minecraft:iron_shovel\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$50\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=50] CK 50\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~7 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买铁镐\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:iron_pickaxe\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~8 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买钻石镐\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=120] minecraft:diamond_pickaxe\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$120\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=120] CK 120\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~9 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买皮革裤子\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=20] minecraft:leather_leggings\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$20\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=20] CK 20\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~10 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买皮革外套\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=70] minecraft:leather_chestplate\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$70\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=70] CK 70\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~11 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买铁头盔\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=40] minecraft:iron_helmet\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$40\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=40] CK 40\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~12 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买铁胸甲\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:iron_chestplate\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~13 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买钻石胸甲\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=160] minecraft:diamond_chestplate\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$160\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=160] CK 160\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~14 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买链甲头盔\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=50] minecraft:chainmail_helmet\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$50\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=50] CK 50\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~15 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买链甲胸甲\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=110] minecraft:chainmail_chestplate\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$110\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=110] CK 110\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~16 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买链甲护腿\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:chainmail_leggings\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~17 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买链甲靴子\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=50] minecraft:chainmail_boots\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$50\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=50] CK 50\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~24 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买时运III钻石镐\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1998] minecraft:diamond_pickaxe 1 0 {ench:[{id:32,lvl:5},{id:34,lvl:3},{id:35,lvl:3},{id:70,lvl:1}]}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1998\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1998] CK 1998\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~25 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买时运V李敏镐\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=8888] minecraft:diamond_pickaxe 1 0 {ench:[{id:32,lvl:7},{id:35,lvl:5}],display:{Name:\\\\\\\"李敏镐\\\\\\\",Lore:[\\\\\\\"你感觉自己的手完全不受控制\\\\\\\"]},Unbreakable:true}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$8888\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=8888] CK 8888\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~26 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买抢夺III钻石剑\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1998] minecraft:diamond_sword 1 0 {ench:[{id:16,lvl:5},{id:21,lvl:3},{id:34,lvl:3},{id:70,lvl:1}]}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1998\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1998] CK 1998\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~27 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买抢夺V毕福剑\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=6666] minecraft:diamond_sword 1 0 {AttributeModifiers:[{Operation:0,UUIDLeast:1009,UUIDMost:1009,Amount:30,AttributeName:\\\\\\\"generic.attackDamage\\\\\\\",Name:\\\\\\\"Damage\\\\\\\"},{Operation:1,UUIDLeast:1010,UUIDMost:1010,Amount:0.30,AttributeName:\\\\\\\"generic.attackSpeed\\\\\\\",Name:\\\\\\\"AttackSpeed\\\\\\\"}],ench:[{id:21,lvl:5}],display:{Name:\\\\\\\"毕福剑\\\\\\\",Lore:[\\\\\\\"+30 攻击伤害\\\\\\\",\\\\\\\"+30% 攻击速度\\\\\\\",\\\\\\\"传说中 Herobrine 死后的掉落物\\\\\\\"]},HideFlags:2,Unbreakable:true}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$6666\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=6666] CK 6666\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~28 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买力量X麒麟弓\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=9999] minecraft:bow 1 0 {ench:[{id:48,lvl:10},{id:49,lvl:2},{id:50,lvl:1},{id:51,lvl:1}],display:{Name:\\\\\\\"麒麟弓\\\\\\\",Lore:[\\\\\\\"这把弓需要配备麒麟臂使用\\\\\\\"]},Unbreakable:true}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$9999\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=9999] CK 9999\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}






testfor @a[x=236,y=64,z=296,dx=29,dy=5,dz=10]
tellraw @a[x=236,y=64,z=296,dx=29,dy=5,dz=10] [{"text":"欢迎购买武器、工具、盔甲\n","color":"yellow"},
{"text":"弓$30、箭$8/8、皮革裤子$20、皮革外套$70\n","color":"light_purple"},
{"text":"铁斧$60、铁剑$90、铁锹$50$、铁镐$90、铁头盔$40、铁胸甲$100\n","color":"gold"},
{"text":"钻石斧$90、钻石剑$120、钻石镐$120、钻石胸甲$160\n","color":"green"},
{"text":"链甲头盔$50、链甲胸甲$110、链甲护腿$90、链甲靴子$50\n","color":"red"},
{"text":"时运III钻石镐$1998、时运V李敏镐$8888\n","color":"blue"},
{"text":"抢夺III钻石剑$1998、抢夺V毕福剑$6666、力量X麒麟弓$9999","color":"light_purple"}]

give @p[score_CK_min=1998] minecraft:diamond_pickaxe
give @p[score_CK_min=8888] minecraft:diamond_pickaxe
give @p[score_CK_min=1998] minecraft:diamond_sword
give @p[score_CK_min=6666] minecraft:diamond_sword
give @p[score_CK_min=9999] minecraft:bow

summon villager ~ ~.5 ~ {NoAI:true,Invulnerable:true,CustomName:"武器大师",CustomNameVisible:true,Profession:3,Silent:true,Offers:{Recipes:[
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,       Count:1b},buyB:{id:minecraft:stone,     Count:8b},
sell:{id:minecraft:coal,Count:1b,tag:{ench:[{id:999}],display:{Name:"精制煤"},}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot, Count:1b},buyB:{id:minecraft:coal,      Count:8b},
sell:{id:minecraft:iron_ingot,Count:1b,tag:{ench:[{id:999}],display:{Name:"精制铁锭"}}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot, Count:1b},buyB:{id:minecraft:iron_ingot,Count:8b},
sell:{id:minecraft:gold_ingot,Count:1b,tag:{ench:[{id:999}],display:{Name:"精制金锭"}}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,    Count:1b},buyB:{id:minecraft:gold_ingot,Count:8b},
sell:{id:minecraft:diamond,Count:1b,tag:{ench:[{id:999}],display:{Name:"精制钻石"}}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,Count:1b},buyB:{id:minecraft:diamond,   Count:8b},
sell:{id:minecraft:nether_star,Count:1b,tag:{ench:[{id:999}],display:{Name:"精制下界之星"}}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:2b,tag:{ench:[{id:999}],display:{Name:"精制煤"}}},  	 	buyB:{id:minecraft:stick,Count:1b},sell:{id:minecraft:stone_sword,	Count:1b,tag:{AttributeModifiers:[{Operation:0,UUIDLeast:1001,UUIDMost:1001,Amount: 5,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1002,UUIDMost:1002,Amount:0.05,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:1},{id:34,lvl:1},{id:70,lvl:1}],display:{Lore:["+5 攻击伤害","+5% 攻击速度"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:2b,tag:{ench:[{id:999}],display:{Name:"精制铁锭"}}},	 	buyB:{id:minecraft:stick,Count:1b},sell:{id:minecraft:stone_sword,	Count:1b,tag:{AttributeModifiers:[{Operation:0,UUIDLeast:1003,UUIDMost:1003,Amount:10,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1004,UUIDMost:1004,Amount:0.10,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:2},{id:34,lvl:2},{id:70,lvl:1}],display:{Lore:["+10 攻击伤害","+10% 攻击速度"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:2b,tag:{ench:[{id:999}],display:{Name:"精制金锭"}}},	 	buyB:{id:minecraft:stick,Count:1b},sell:{id:minecraft:iron_sword,	Count:1b,tag:{AttributeModifiers:[{Operation:0,UUIDLeast:1005,UUIDMost:1005,Amount:15,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1006,UUIDMost:1006,Amount:0.15,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:3},{id:34,lvl:3},{id:70,lvl:1}],display:{Lore:["+15 攻击伤害","+15% 攻击速度"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:2b,tag:{ench:[{id:999}],display:{Name:"精制钻石"}}},	 	buyB:{id:minecraft:stick,Count:1b},sell:{id:minecraft:iron_sword,	Count:1b,tag:{AttributeModifiers:[{Operation:0,UUIDLeast:1007,UUIDMost:1007,Amount:20,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1008,UUIDMost:1008,Amount:0.20,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:4},{id:34,lvl:4},{id:70,lvl:1}],display:{Lore:["+20 攻击伤害","+20% 攻击速度"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:2b,tag:{ench:[{id:999}],display:{Name:"精制下界之星"}}},	buyB:{id:minecraft:stick,Count:1b},sell:{id:minecraft:diamond_sword,	Count:1b,tag:{AttributeModifiers:[{Operation:0,UUIDLeast:1009,UUIDMost:1009,Amount:30,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1010,UUIDMost:1010,Amount:0.30,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:5}],display:{Lore:["+30 攻击伤害","+30% 攻击速度"]},HideFlags:2,Unbreakable:true}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:3b,tag:{ench:[{id:999}],display:{Name:"精制煤"}}},		buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_axe,		Count:1b,tag:{ench:[{id:21,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:3b,tag:{ench:[{id:999}],display:{Name:"精制铁锭"}}},		buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_axe,		Count:1b,tag:{ench:[{id:21,lvl:2},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:3b,tag:{ench:[{id:999}],display:{Name:"精制金锭"}}},		buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_axe,		Count:1b,tag:{ench:[{id:21,lvl:3},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:3b,tag:{ench:[{id:999}],display:{Name:"精制钻石"}}},		buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_axe,		Count:1b,tag:{ench:[{id:21,lvl:4},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:3b,tag:{ench:[{id:999}],display:{Name:"精制下界之星"}}},	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:diamond_axe,	Count:1b,tag:{ench:[{id:21,lvl:5}],Unbreakable:true}}}
]}}


give ruhuasiyu minecraft:diamond_sword 1 0 {AttributeModifiers:[{Operation:0,UUIDLeast:1009,UUIDMost:1009,Amount:30,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1010,UUIDMost:1010,Amount:0.30,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:5}],display:{Name:"毕福剑",Lore:["+30 攻击伤害","+30% 攻击速度","传说中 Herobrine 死后的掉落物"]},HideFlags:2,Unbreakable:true}




summon villager ~ ~.5 ~ {NoAI:true,Invulnerable:true,CustomName:"工具大师",CustomNameVisible:true,Profession:3,Silent:true,Offers:{Recipes:[
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:1b,tag:{ench:[{id:999}],display:{Name:"精制煤"}}},	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_shovel,Count:1b,tag:{ench:[{id:32,lvl:1},{id:35,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:1b,tag:{ench:[{id:999}],display:{Name:"精制铁锭"}}},	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_shovel,Count:1b,tag:{ench:[{id:32,lvl:2},{id:33,lvl:1},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:1b,tag:{ench:[{id:999}],display:{Name:"精制金锭"}}},	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_shovel,Count:1b,tag:{ench:[{id:32,lvl:3},{id:35,lvl:3},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:1b,tag:{ench:[{id:999}],display:{Name:"精制钻石"}}},	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_shovel,Count:1b,tag:{ench:[{id:32,lvl:4},{id:33,lvl:1},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:1b,tag:{ench:[{id:999}],display:{Name:"精制下界之星"}}},	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:diamond_shovel,Count:1b,tag:{ench:[{id:32,lvl:5},{id:35,lvl:5}],Unbreakable:true}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:3b,tag:{ench:[{id:999}],display:{Name:"精制煤"}}},  	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_pickaxe,Count:1b,tag:{ench:[{id:32,lvl:1},{id:35,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:3b,tag:{ench:[{id:999}],display:{Name:"精制铁锭"}}},	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_pickaxe,Count:1b,tag:{ench:[{id:32,lvl:2},{id:33,lvl:1},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:3b,tag:{ench:[{id:999}],display:{Name:"精制金锭"}}},	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_pickaxe,Count:1b,tag:{ench:[{id:32,lvl:3},{id:35,lvl:3},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:3b,tag:{ench:[{id:999}],display:{Name:"精制钻石"}}},	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_pickaxe,Count:1b,tag:{ench:[{id:32,lvl:5},{id:33,lvl:1},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:3b,tag:{ench:[{id:999}],display:{Name:"精制下界之星"}}},	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:diamond_pickaxe,Count:1b,tag:{ench:[{id:32,lvl:7},{id:35,lvl:5}],Unbreakable:true}}}
]}}

summon villager ~ ~.5 ~ {NoAI:true,Invulnerable:true,CustomName:"盔甲大师",CustomNameVisible:true,Profession:3,Silent:true,Offers:{Recipes:[
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:8b,tag:{ench:[],display:{Name:"精制煤"}}},		sell:{id:minecraft:leather_chestplate,Count:1b,tag:
{ench:[{id:minecraft:0,lvl:1},{id:7,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:8b,tag:{ench:[],display:{Name:"精制铁锭"}}},	sell:{id:minecraft:leather_chestplate,Count:1b,tag:
{ench:[{id:minecraft:0,lvl:2},{id:7,lvl:2},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:8b,tag:{ench:[],display:{Name:"精制金锭"}}},	sell:{id:minecraft:iron_chestplate,Count:1b,tag:
{ench:[{id:minecraft:0,lvl:3},{id:7,lvl:3},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:8b,tag:{ench:[],display:{Name:"精制钻石"}}},	sell:{id:minecraft:iron_chestplate,Count:1b,tag:
{ench:[{id:minecraft:0,lvl:4},{id:7,lvl:4},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:8b,tag:{ench:[],display:{Name:"精制下界之星"}}},sell:{id:minecraft:diamond_chestplate,Count:1b,tag:
{ench:[{id:minecraft:0,lvl:5},{id:7,lvl:5}],Unbreakable:true}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:7b,tag:{ench:[],display:{Name:"精制煤"}}},		sell:{id:minecraft:leather_leggings,Count:1b,tag:
{AttributeModifiers:[{Operation:0,UUIDLeast:7,UUIDMost:99,Amount:2,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:1},{id:34,lvl:1},{id:70,lvl:1}],display:{Lore:["+2 盔甲韧性"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:7b,tag:{ench:[],display:{Name:"精制铁锭"}}},	sell:{id:minecraft:leather_leggings,Count:1b,tag:
{AttributeModifiers:[{Operation:0,UUIDLeast:7,UUIDMost:99,Amount:4,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:2},{id:34,lvl:2},{id:70,lvl:1}],display:{Lore:["+4 盔甲韧性"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:7b,tag:{ench:[],display:{Name:"精制金锭"}}},	sell:{id:minecraft:iron_leggings,Count:1b,tag:
{AttributeModifiers:[{Operation:0,UUIDLeast:7,UUIDMost:99,Amount:6,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:3},{id:34,lvl:3},{id:70,lvl:1}],display:{Lore:["+6 盔甲韧性"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:7b,tag:{ench:[],display:{Name:"精制钻石"}}},	sell:{id:minecraft:iron_leggings,Count:1b,tag:
{AttributeModifiers:[{Operation:0,UUIDLeast:7,UUIDMost:99,Amount:8,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:4},{id:34,lvl:4},{id:70,lvl:1}],display:{Lore:["+8 盔甲韧性"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:7b,tag:{ench:[],display:{Name:"精制下界之星"}}},sell:{id:minecraft:diamond_leggings,Count:1b,tag:
{AttributeModifiers:[{Operation:0,UUIDLeast:7,UUIDMost:99,Amount:10,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:10}],display:{Lore:["+10 盔甲韧性"]},HideFlags:2,Unbreakable:true}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:5b,tag:{ench:[],display:{Name:"精制煤"}}},		sell:{id:minecraft:leather_helmet,Count:1b,tag:
{ench:[{id:4,lvl:1},{id:5,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:5b,tag:{ench:[],display:{Name:"精制铁锭"}}},	sell:{id:minecraft:leather_helmet,Count:1b,tag:
{ench:[{id:4,lvl:2},{id:5,lvl:2},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:5b,tag:{ench:[],display:{Name:"精制金锭"}}},	sell:{id:minecraft:iron_helmet,Count:1b,tag:
{ench:[{id:4,lvl:3},{id:5,lvl:3},{id:6,lvl:1},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:5b,tag:{ench:[],display:{Name:"精制钻石"}}},	sell:{id:minecraft:iron_helmet,Count:1b,tag:
{ench:[{id:4,lvl:4},{id:5,lvl:4},{id:6,lvl:1},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:5b,tag:{ench:[],display:{Name:"精制下界之星"}}},sell:{id:minecraft:diamond_helmet,Count:1b,tag:
{ench:[{id:4,lvl:5},{id:5,lvl:10},{id:6,lvl:1}],Unbreakable:true}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:4b,tag:{ench:[],display:{Name:"精制煤"}}},		sell:{id:minecraft:leather_boots,Count:1b,tag:
{ench:[{id:2,lvl:1},{id:3,lvl:1},{id:minecraft:8,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:4b,tag:{ench:[],display:{Name:"精制铁锭"}}},	sell:{id:minecraft:leather_boots,Count:1b,tag:
{ench:[{id:2,lvl:2},{id:3,lvl:2},{id:minecraft:9,lvl:1},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:4b,tag:{ench:[],display:{Name:"精制金锭"}}},	sell:{id:minecraft:iron_boots,Count:1b,tag:
{ench:[{id:2,lvl:3},{id:3,lvl:3},{id:minecraft:8,lvl:2},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:4b,tag:{ench:[],display:{Name:"精制钻石"}}},	sell:{id:minecraft:iron_boots,Count:1b,tag:
{ench:[{id:2,lvl:4},{id:3,lvl:4},{id:minecraft:9,lvl:2},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:4b,tag:{ench:[],display:{Name:"精制下界之星"}}},sell:{id:minecraft:diamond_boots,Count:1b,tag:
{ench:[{id:2,lvl:5},{id:3,lvl:5},{id:minecraft:8,lvl:3}],Unbreakable:true,HideFlags:2}}}
]}}

summon villager ~ ~.5 ~ {NoAI:true,Invulnerable:true,CustomName:"回收商",CustomNameVisible:true,Profession:0,Silent:true,Offers:{Recipes:[
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:leather_helmet,		Count:1b},sell:{id:minecraft:leather,		Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:leather_chestplate,	Count:1b},sell:{id:minecraft:leather,		Count:4b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:leather_leggings,	Count:1b},sell:{id:minecraft:leather,		Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:leather_boots,		Count:1b},sell:{id:minecraft:leather,		Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:chainmail_helmet,	Count:1b},sell:{id:minecraft:iron_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:chainmail_chestplate,Count:1b},sell:{id:minecraft:iron_ingot,	Count:4b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:chainmail_leggings,	Count:1b},sell:{id:minecraft:iron_ingot,	Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:chainmail_boots,		Count:1b},sell:{id:minecraft:iron_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_helmet,			Count:1b},sell:{id:minecraft:iron_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_chestplate,		Count:1b},sell:{id:minecraft:iron_ingot,	Count:4b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_leggings,		Count:1b},sell:{id:minecraft:iron_ingot,	Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_boots,			Count:1b},sell:{id:minecraft:iron_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_helmet,		Count:1b},sell:{id:minecraft:gold_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_chestplate,	Count:1b},sell:{id:minecraft:gold_ingot,	Count:4b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_leggings,		Count:1b},sell:{id:minecraft:gold_ingot,	Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_boots,		Count:1b},sell:{id:minecraft:gold_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_helmet,		Count:1b},sell:{id:minecraft:diamond,		Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_chestplate,	Count:1b},sell:{id:minecraft:diamond,		Count:4b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_leggings,	Count:1b},sell:{id:minecraft:diamond,		Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_boots,		Count:1b},sell:{id:minecraft:diamond,		Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:wooden_sword,		Count:1b},sell:{id:minecraft:planks,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:stone_sword,			Count:1b},sell:{id:minecraft:cobblestone,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_sword,			Count:1b},sell:{id:minecraft:iron_ingot,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_sword,		Count:1b},sell:{id:minecraft:gold_ingot,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_sword,		Count:1b},sell:{id:minecraft:diamond,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:wooden_pickaxe,		Count:1b},sell:{id:minecraft:planks,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:stone_pickaxe,		Count:1b},sell:{id:minecraft:cobblestone,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_pickaxe,		Count:1b},sell:{id:minecraft:iron_ingot,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_pickaxe,		Count:1b},sell:{id:minecraft:gold_ingot,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_pickaxe,		Count:1b},sell:{id:minecraft:diamond,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_horse_armor,	Count:1b},sell:{id:minecraft:iron_ingot,	Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_horse_armor,	Count:1b},sell:{id:minecraft:gold_ingot,	Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_horse_armor,	Count:1b},sell:{id:minecraft:diamond,		Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:saddle,				Count:1b},sell:{id:minecraft:leather,		Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:minecart,			Count:1b},sell:{id:minecraft:iron_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:bow,					Count:1b},sell:{id:minecraft:string,		Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:stone,Damage:1s,		Count:1b},sell:{id:minecraft:quartz,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:stone,Damage:3s,		Count:2b},sell:{id:minecraft:quartz,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:stone,Damage:5s,		Count:4b},sell:{id:minecraft:quartz,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,Damage:1,		Count:2b},sell:{id:minecraft:coal,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,			   Count:64},sell:{id:minecraft:diamond,		Count:1b}}
]}}

====	112 工具 17
钓鱼竿			fishing_rod			20
剪刀			shears				30
指南针			compass				100
钟				clock				100
命名牌			name_tag			200
附魔之瓶		experience_bottle	30
末影珍珠		ender_pearl			40
鞍				saddle				80
玻璃			glass				2
书架			bookshelf			30
羊毛			wool				10
岩浆桶			lava_bucket			100
钻石马凯		diamond_horse_armor	500
鞘翅			elytra				1000
长者时钟		clock				1926
空地图			map					70
海洋探险家地图	filled_map			2000

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买钓鱼竿\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=20] minecraft:fishing_rod\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$20\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=20] CK 20\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-1 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买剪刀\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=30] minecraft:shears\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$30\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=30] CK 30\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-2 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买指南针\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:compass\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-3 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买钟\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:clock\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-4 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买命名牌\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=200] minecraft:name_tag\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$200\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=200] CK 200\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-5 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买附魔之瓶\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=30] minecraft:experience_bottle\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$30\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=30] CK 30\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-6 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买末影珍珠\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=40] minecraft:ender_pearl\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$40\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=40] CK 40\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-7 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买鞍\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=80] minecraft:saddle\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-8 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买玻璃\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:glass\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-9 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买书架\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=30] minecraft:bookshelf\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$30\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=30] CK 30\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-10 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买羊毛\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:wool\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-11 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买岩浆桶\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:lava_bucket\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-12 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买钻石马凯\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=500] minecraft:diamond_horse_armor\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$500\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=500] CK 500\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-13 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买鞘翅\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1000] minecraft:elytra\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1000] CK 1000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-14 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买长者时钟\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1926] minecraft:clock 1 0 {AttributeModifiers:[{Operation:1,UUIDLeast:100,UUIDMost:999,Amount:1,AttributeName:\\\\\\\"generic.movementSpeed\\\\\\\",Name:\\\\\\\"Speed\\\\\\\"}], display:{Name:\\\\\\\"长者时钟\\\\\\\",Lore:[\\\\\\\"速度 +100%\\\\\\\",\\\\\\\"与时间赛跑\\\\\\\"]},HideFlags:2,ench:[{id:999}]}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1926\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1926] CK 1926\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-15 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买空地图\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=70] minecraft:map\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$70\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=70] CK 70\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-16 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买海洋探险家地图\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2000] minecraft:filled_map 1 20001 {Decorations:[{rot:180.0d,x:-3800.0d,z:-5048.0d,id:\\\\\\\"+\\\\\\\",type:9b}],display:{LocName:\\\\\\\"filled_map.monument\\\\\\\",MapColor:3830373}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2000] CK 2000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-17 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"购买海洋探险家地图\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2000] minecraft:filled_map 1 20002 {Decorations:[{rot:180.0d,x:11944.0d,z:-2791.0d,id:\\\\\\\"+\\\\\\\",type:9b}],display:{LocName:\\\\\\\"filled_map.monument\\\\\\\",MapColor:3830373}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2000] CK 2000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=267,y=64,z=287,dx=9,dy=5,dz=19]
tellraw @a[x=267,y=64,z=287,dx=9,dy=5,dz=19] [{"text":"欢迎购买武器、工具、盔甲\n","color":"yellow"},
{"text":"玻璃$2、羊毛$10、钓鱼竿$20、剪刀/书架/附魔之瓶$30、末影珍珠$40\n","color":"light_purple"},
{"text":"鞍$80、指南针/钟/岩浆桶$100、命名牌$200、钻石马凯$500\n","color":"gold"},
{"text":"鞘翅$1000、长者时钟$1926、空地图$70、海洋探险家地图$2000\n","color":"green"},
{"text":"您还可以购买附魔书","color":"red"}]

give @p[score_CK_min=1926] minecraft:clock 1 0 {AttributeModifiers:[{Operation:1,UUIDLeast:100,UUIDMost:999,Amount:1,AttributeName:"generic.movementSpeed",Name:"Speed"}], display:{Name:"长者时钟",Lore:["速度 +100%","与时间赛跑"]},HideFlags:2,ench:[{id:999}]}
give @p[score_CK_min=2000] minecraft:filled_map 1 20001 {Decorations:[{rot:180.0d,x:-3800.0d,z:-5048.0d,id:"+",type:9b}],display:{LocName:"filled_map.monument",MapColor:3830373}}
give @p[score_CK_min=2000] minecraft:filled_map 1 20002 {Decorations:[{rot:180.0d,x:11944.0d,z:-2791.0d,id:"+",type:9b}],display:{LocName:"filled_map.monument",MapColor:3830373}}

summon villager ~ ~.5 ~ {Rotation:[270f,0f],NoAI:true,Invulnerable:true,CustomName:"魔法师",CustomNameVisible:true,Profession:1,Silent:true,Offers:{Recipes:[
{maxUses:99999999,buy:{id:minecraft:emerald,Count:14b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:0,lvl:4}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:14b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:1,lvl:4}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:14b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:2,lvl:4}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:14b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:3,lvl:4}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:14b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:4,lvl:4}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:5,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 5b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:6,lvl:1}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:7,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:8,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:16b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:9,lvl:2}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:17b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:16,lvl:5}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:17b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:17,lvl:5}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:17b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:18,lvl:5}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 8b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:19,lvl:2}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 8b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:20,lvl:2}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:21,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:17b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:32,lvl:5}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 5b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:33,lvl:1}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:34,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:35,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:17b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:48,lvl:5}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 8b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:49,lvl:2}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 5b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:50,lvl:1}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 5b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:51,lvl:1}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:61,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:62,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:10b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:70,lvl:1}]}}}]}}

================================     滨湖广场   ================================
setblock ~ ~ ~ standing_sign 0 replace {Text1:"{\"text\":\"\"}",
Text2:"{\"text\":\"孕育\",\"color\":\"dark_blue\"}",
Text3:"{\"text\":\"作者：如花\",\"color\":\"dark_purple\"}",
Text4:"{\"text\":\"2016/12/15\",\"color\":\"dark_purple\"}"}

================================      刷物品    ================================
====	刷雪
testfor @a[x=315,y=63,z=355,dx=10,dy=5,dz=12]
tellraw @a[x=315,y=63,z=355,dx=10,dy=5,dz=12] [{"text":"欢迎来到刷雪室","color":"yellow"}]

====	刷石
summon item ~1 ~3 ~2 {Item:{id:"minecraft:stone",Count:1b,Damage:0s}}
testfor @a[x=315,y=63,z=369,dx=10,dy=5,dz=12]
tellraw @a[x=315,y=63,z=369,dx=10,dy=5,dz=12] [{"text":"欢迎来到刷石室，你可以在此刷石头和圆石。","color":"yellow"}]

====	刷鸡
scoreboard players tag @e[type=item,r=10] add feathers {Item:{id:"minecraft:feather",Count:1b,Damage:0s}}
scoreboard players tag @e[type=item,r=10] add chickens {Item:{id:"minecraft:chicken",Count:1b,Damage:0s}}
scoreboard players tag @e[type=item,r=10] add eggs {Item:{id:"minecraft:egg",Count:1b,Damage:0s}}
tp @e[tag=eggs] 316 67 387
tp @e[tag=feathers] 324 66 383
tp @e[tag=chickens] 324 66 383
testfor @a[x=315,y=63,z=383,dx=10,dy=5,dz=12]
tellraw @a[x=315,y=63,z=383,dx=10,dy=5,dz=12] [{"text":"欢迎来到刷鸡室，你可以在此刷鸡肉和羽毛。","color":"yellow"}]

====	刷怪
testfor @a[x=334,y=63,z=355,dx=5,dy=5,dz=17]
tellraw @a[x=334,y=63,z=355,dx=5,dy=5,dz=17] [{"text":"欢迎在此刷怪物，右击告示牌即可获得怪物掉落物。","color":"yellow"}],
{"text":"将骨粉放置在发射器内，再将树苗和蘑菇种植在草方块或菌丝上即可。","color":"light_purple"}],
{"text":"鞍$80、指南针/钟/岩浆桶$100、命名牌$200、钻石马凯$500\n","color":"gold"},
{"text":"鞘翅$1000、长者时钟$1926、空地图$70、海洋探险家地图$2000\n","color":"green"},
{"text":"您还可以购买附魔书","color":"red"}]

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷鱿鱼\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/squid\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷僵尸\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/zombie\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷骷髅\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/skeleton\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷爬行者\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/creeper\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷蜘蛛\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/spider\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷史莱姆\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/slime\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷女巫\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/witch\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷僵尸猪人\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/zombie_pigman\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~9 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷岩浆怪\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/magma_cube\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~11 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷凋零骷髅\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/wither_skeleton\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~12 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷恶魂\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=80] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/ghast\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~14 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷末影人\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=40] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/enderman\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$40\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=40] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~15 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷潜影贝\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=80] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/shulker\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~16 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷守卫者\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/guardian\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~17 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"刷唤魔者\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=60] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/evocation_illager\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$60\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=60] CK 60\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

====	刷蘑菇、木头
testforblock 335 65 379 sapling
testforblock 335 65 379 brown_mushroom
testforblock 335 65 379 red_mushroom

setblock 335 65 379 air 0 destroy
fill 331 66 375 339 75 383 air 0 destroy

setblock ~ ~ ~ wall_sign 4 replace {Text1:"{\"text\":\"\"}",
Text2:"{\"text\":\"> 刷木头 <\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock 335 64 379 mycelium\"}}",
Text3:"{\"text\":\"刷蘑菇\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"clone ~ ~-3 ~ ~ ~-3 ~ ~ ~ ~\"}}",
Text4:"{\"text\":\"\"}"}
setblock ~ ~ ~ wall_sign 4 replace {Text1:"{\"text\":\"\"}",
Text2:"{\"text\":\"刷木头\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock 335 64 379 grass\"}}",
Text3:"{\"text\":\"> 刷蘑菇 <\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"clone ~ ~-2 ~ ~ ~-2 ~ ~ ~ ~\"}}",
Text4:"{\"text\":\"\"}"}

testfor @a[x=333,y=63,z=374,dx=6,dy=5,dz=10]
tellraw @a[x=333,y=63,z=374,dx=6,dy=5,dz=10] [{"text":"欢迎来刷木头和蘑菇。","color":"yellow"},
{"text":"将骨粉放置在发射器内，再将树苗和蘑菇种植在草方块或菌丝上即可。","color":"light_purple"}]

====	刷小麦、甜菜根、土豆、胡萝卜
testforblock 337 65 387 minecraft:wheat 7
testforblock 337 65 387 minecraft:potatoes 7
testforblock 337 65 387 minecraft:carrots 7
testforblock 337 65 387 minecraft:beetroots 3
setblock 337 65 387 minecraft:air 0 destroy

testfor @a[x=334,y=63,z=386,dx=3,dy=5,dz=3]
tellraw @a[x=334,y=63,z=386,dx=3,dy=5,dz=3] [{"text":"欢迎来刷小麦、甜菜根、土豆、胡萝卜。","color":"yellow"},
{"text":"将骨粉放置在发射器内，再将作物种植在耕地上即可。","color":"light_purple"}]

====	刷鱼
summon vex 339 65 391 {NoAI:1,Silent:1,Tags:["fishbat"],LifeTicks:15000}
scoreboard players add @e[tag=fishbat] temp 1
execute @e[tag=fishbat,score_temp_min=300] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,Health:1,DeathLootTable:"minecraft:gameplay/fishing",Tags:["mobs"],LifeTicks:1}
scoreboard players remove @e[tag=fishbat] temp 300

testfor @a[x=335,y=63,z=390,dx=4,dy=5,dz=5]
tellraw @a[x=335,y=63,z=390,dx=4,dy=5,dz=5] [{"text":"欢迎来到刷鱼室。你可以在此刷鸡肉和羽毛。","color":"yellow"},
{"text":"将蜘蛛网扔在橙色区域。每隔15产生一次钓鱼所得，每个蜘蛛网持续50次\n","color":"light_purple"}]

====	自动化农场
该农场生产小麦、甜菜根、土豆、胡萝卜、南瓜、西瓜、甘蔗、仙人掌、可可豆、地狱疣。

clone 350 63 355 385 63 395 350 64 355 filtered move minecraft:wheat 7
fill 350 63 355 385 63 395 minecraft:wheat 0 keep
scoreboard players tag @e[type=item] add wheat {Item:{id:minecraft:wheat}}
tp @e[type=item,tag=wheat] 386 66 395
clone 350 63 355 385 63 395 350 64 355 filtered move minecraft:beetroots 3
fill 350 63 355 385 63 395 minecraft:beetroots 0 keep
scoreboard players tag @e[type=item] add beetroot {Item:{id:minecraft:beetroot}}
tp @e[type=item,tag=beetroot] 387 66 395
clone 350 63 355 385 63 395 350 64 355 filtered move minecraft:carrots 7
fill 350 63 355 385 63 395 minecraft:carrots 0 keep
scoreboard players tag @e[type=item] add carrot {Item:{id:minecraft:carrot}}
tp @e[type=item,tag=carrot] 389 66 395
clone 350 63 355 385 63 395 350 64 355 filtered move minecraft:potatoes 7
fill 350 63 355 385 63 395 minecraft:potatoes 0 keep
scoreboard players tag @e[type=item] add potato {Item:{id:minecraft:potato}}
tp @e[type=item,tag=potato] 388 66 395

clone 396 63 355 413 63 395 396 64 355 filtered move minecraft:pumpkin
clone 396 63 355 413 63 395 396 64 355 filtered move minecraft:melon_block
fill 396 62 355 413 62 395 minecraft:farmland 7 replace minecraft:dirt
fill 396 62 355 413 62 395 minecraft:farmland 7 replace minecraft:grass
fill 396 64 355 413 64 395 minecraft:air 0 destroy
scoreboard players tag @e[type=item] add pumpkin {Item:{id:minecraft:pumpkin}}
scoreboard players tag @e[type=item] add melon {Item:{id:minecraft:melon}}
tp @e[type=item,tag=pumpkin] 390 66 395
tp @e[type=item,tag=melon] 391 66 395

fill 414 64 355 432 64 395 air 0 destroy
scoreboard players tag @e[type=item] add reeds {Item:{id:minecraft:reeds}}
scoreboard players tag @e[type=item] add cactus {Item:{id:minecraft:cactus}}
tp @e[type=item,tag=reeds] 392 66 395
tp @e[type=item,tag=cactus] 393 66 395
clone 445 63 355 445 68 395 445 69 355 filtered move minecraft:cocoa 11
fill 445 63 355 445 68 395 minecraft:cocoa 3 keep
scoreboard players tag @e[type=item] add cocoa {Item:{id:minecraft:dye,Damage:3s}}
tp @e[type=item,tag=cocoa] 394 66 395
clone 433 63 355 444 63 395 433 64 355 filtered move minecraft:nether_wart 3
fill 433 63 355 444 63 395 minecraft:nether_wart 0 keep
scoreboard players tag @e[type=item] add nether_wart {Item:{id:minecraft:nether_wart}}
tp @e[type=item,tag=nether_wart] 395 66 395







================================      1.-1     墓地    ================================


盔甲架
summon armor_stand ~-1.8 ~-1.1 ~ {Pose:{Head:[0f,90f,0f]},Small:1,DisabledSlots:1,Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:minecraft:lava_bucket}]}

summon armor_stand ~-1 ~-1 ~ {Invisible:1,Marker:1,NoGravity:1,Passengers:[
{id:minecraft:Villager,Age:-1000000,Invulnerable:true,NoAI:true,Silent:1,ActiveEffects:[{id:14,Duration:9999999,ShowParticles:false}],ArmorItems:[{},{},{},{id:minecraft:saddle}]}]}

成书
give @p written_book 1 0 {
AttributeModifiers:[{Operation:0,UUIDLeast:1,UUIDMost:1,Amount:0.025,AttributeName:generic.movementSpeed,Name:Speed}],
title:"新手指引",
author:"Stan",
pages:[
    1:"{text:'    欢迎来到',"extra":[{text:'南方公园',"color":"red"},{text:'！你所',color:black},{text:'在的位置为',color:black},{text:'中央广场',color:dark_purple},{text:'，这也是',color:black},{text:'你的',color:black},{text:'复活点',color:dark_purple},{text:'。广场附近有：\n',color:black},{text:'1-超市',color:dark_purple},{text:'出售各种方块和物品;',color:black},{text:'2-批发部',color:dark_purple},{text:'收购各种农副产品;',color:black},{text:'3-银行',color:dark_purple},{text:'开户、存取款等;\n',color:black},{text:'4-村民交易中心',color:dark_purple},{text:';\n',color:black},{text:'5-传送门',color:dark_purple},{text:'前往下界和末地;\n',color:black},{text:'6-采石场',color:dark_purple},{text:'开采石头;\n',color:black},{text:'7-轨道交通',color:dark_purple},{text:'离开主城区;\n',color:black},{text:'其它有',color:black},{text:'药店',color:dark_purple},{text:'、',color:black},{text:'公园',color:dark_purple},{text:'、',color:black},{text:'小学',color:dark_purple},{text:'、',color:black},{text:'社区中心',color:dark_purple},{text:'、',color:black},{text:'运动场',color:dark_purple},{text:'、',color:black},{text:'警察局',color:dark_purple},{text:'、',color:black},{text:'居民区',color:dark_purple},{text:'、',color:black},{text:'墓地',color:dark_purple},{text:'等地。\n',color:black}]}",
    2:"{text:'         生存指引\n\n',color:gold,"extra":[{text:'    广场附近400米内不能建 造与破坏，请在超市采购一些物品后请离开主城区前往沙石世界生存。我们已给与你100元启动资金，你可以存入银行用于买卖商品。存款日利率在25%%左右浮动，若存款每达到1000元、10000元、100000元、1000000元，利率会相应增加5%%。',color:black}]}",
    3:"{text:'         关于操作\n\n',"color":"red","extra":[{text:'    如果你需要取款、购买， 请右击相应的牌子；如果你需要存款，请投入相应货币；如果你需要出售物品，请将物品放在快捷栏的第一格。',color:black}]}",
    4:"{text:'         游戏规则\n\n',color:dark_purple,"extra":[{text:'    怪物能否破坏方块：否\n    死亡是否掉落物品：是\n    能否天然生成怪物：否\n    游戏随机刻的速度：10\n    请勿尝试建造刷金塔和刷铁塔，因为他们都是无效的。',color:black}]}"]}
give @p written_book 1 0 {
title:"工具书",author:"一些常用的命令",
pages:[
1:"{text:'\n',color:gold,
"extra":[{text:'1-填充附近7米石头地基\n\n',"color":"red","clickEvent":{action:'run_command',value:'/fill ~-7 0 ~-7 ~7 2 ~7 stone 0 keep'},
"extra":[{text:'2-拾起所有物品\n\n',color:blue,"clickEvent":{action:'run_command',value:'/tp @e[type=Item] @p'},
"extra":[{text:'3-传送至出生点\n\n',color:gold,"clickEvent":{action:'run_command',value:'/tp @p 0 5 5'},
"extra":[{text:'4-传送至瓜地\n\n',color:gold,"clickEvent":{action:'run_command',value:'/tp @p 63 20 -18'},
"extra":[{text:'5-传送至菜地\n\n',color:gold,"clickEvent":{action:'run_command',value:'/tp @p -63 20 -18'},
"extra":[{text:'6-传送至仓库\n\n',color:gold,"clickEvent":{action:'run_command',value:'/tp @p -63 5 44'}
}]}]}]}]}]}]}",
2:"{text:'\n',color:gold,
"extra":[{text:'1-收小麦\n\n',"color":"red","clickEvent":{action:'run_command',value:'/clone ~-10 ~ ~-10 ~10 ~ ~10 ~-10 ~1 ~-10 filtered move minecraft:wheat 7'},
"extra":[{text:'2-收甜菜根\n\n',color:blue,"clickEvent":{action:'run_command',value:'/clone ~-10 ~ ~-10 ~10 ~ ~10 ~-10 ~1 ~-10 filtered move minecraft:beetroots 3'},
"extra":[{text:'3-禁止怪物破坏方块\n\n',color:blue,"clickEvent":{action:'run_command',value:'/gamerule mobGriefing false'},
"extra":[{text:'4-允许怪物破坏方块\n\n',color:blue,"clickEvent":{action:'run_command',value:'/gamerule mobGriefing true'}
}]}]}]}]}"]}

────────────────────────────────────────────────────────────────


give @p written_book{
title:"工具书",author:"一些常用的命令",
pages:["{\"text\":\"\\n\",\"color\":\"gold\",
\"extra\":[{\"text\":\"1-填充附近7米石头地基\\n\\n\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/fill ~-7 0 ~-7 ~7 2 ~7 stone 0 keep\"}},{\"text\":\"1-填充附近7米石头地基\\n\\n\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/fill ~-7 0 ~-7 ~7 2 ~7 stone 0 keep\"}}]}"]}







setblock ~ ~-1 ~ minecraft:chest 0 replace {Lock:"potion"}



summon falling_block ~ ~1 ~ {Block:command_block,Time:1,TileEntityData:{Command:/setblock ~1 ~ ~ wall_sign 5 replace {Text1:"{text:\\\"Click\\\","clickEvent":{action:\\\"run_command\\\",value:\\\"blockdata ~-1 ~ ~ {Command:/replaceitem entity @p slot.hotbar.8 minecraft:diamond 1 0 {display:{Name:\\\u00a7bCBL,Lore:[0:\\\u00a73CommandBlockLogic,1:\\\u00a7eis A,2:\\\u00a72Great Team]}},}\\\"}}"}}}
give @a chest 1 0 {Lock:cisco}
give @p chest {}
警察局{
领地{
全接高频
gamemode 0 @a[name=!Dinnerbone,r=55,rm=51,m=2]
gamemode 2 @a[name=!Dinnerbone,r=50,m=0]
tell @a[name=!Dinnerbone,r=55,rm=50,m=0] 欢迎来到Dinnerbone的家，请勿盗窃与破坏。
tellraw @a[name=Dinnerbone,r=55,rm=50,m=0] Dinnerbone，欢迎回家！
}
惩罚{
testfor @p {Inventory:[{Slot:80b,id:minecraft:leather_helmet,Damage:0s},{Slot:81b,id:minecraft:leather_chestplate,Damage:0s},{Slot:82b,id:minecraft:leather_leggings,Damage:0s},{Slot:83b,id:minecraft:leather_boots,Damage:0s}]}
replaceitem entity @p slot.hotbar.0 air
testfor @p {Inventory:[{Slot:0b,id:minecraft:leather_helmet,Damage:0s,Count:1b}]}
testforblock -200 56 11 dropper 0 {Items:[{Slot:0b,id:minecraft:leather_helmet,Damage:0s}]}
testforblock -200 56 11 dropper 0 {Items:[
{Slot:0b,id:minecraft:wheat,Damage:0s,Count:1b}
]}
testforblock -200 56 11 chest 0 {Items:[{Slot:0b,id:minecraft:leather_helmet,Damage:0s},{Slot:1b,id:minecraft:leather_chestplate,Damage:0s},{Slot:3b,id:minecraft:leather_leggings,Damage:0s},{Slot:4b,id:minecraft:leather_boots,Damage:0s}]}
setblock 458 86 -366 lava
setblock 458 86 -366 dispenser 3 replace {Items:[{id:383,Count:1b,Slot:0,Damage:54}]}
kill @e[type=Item]
kill @e[type=commandblock_minecart]

setblock ~ ~1 ~ minecraft:mob_spawner 0 replace {Entityid:minecraft:Cow,SpawnCount:2b,SpawnRange:6,RequiredPlayerRange:128,Delay:10,MinSpawnDelay:10,MaxSpawnDelay:100,MaxNearbyEntities:20,SpawnPotentials:[{Type:Pig,Weight:1}]}

==================================可抢夺物品表==================================
abandoned_mineshaft - 废弃矿井中找到的运输矿车。
desert_pyramid - 沙漠神殿的宝藏室里的箱子。
end_city_treasure - 末地城里的箱子。
igloo_chest - 雪屋地下室里的箱子。
jungle_temple - 丛林神庙里的箱子。
nether_bridge - 下界要塞里的箱子。
simple_dungeon - 地牢里的箱子。
spawn_bonus_chest - 如果打开奖励箱选项的话，新世界生成时的奖励箱。
stronghold_corridor - 要塞台阶祭坛里的箱子。
stronghold_crossing - 要塞储存室里的箱子。
stronghold_library - 要塞图书馆里的箱子。
village_blacksmith - 村庄中的铁匠铺里的箱子。

summon creeper ~ ~1 ~ {DeathLootTable:"minecraft:chests/simple_dungeon",DeathLootTableSeed:123l}
setblock ~ ~1 ~ minecraft:chest 0 replace {LootTable:"minecraft:chests/end_city_treasure"}
give @p spawn_egg 1 0 {EntityTag:{id:minecraft:silverfish,DeathLootTable:"minecraft:chests/end_city_treasure"}}

=====================================单指令=====================================
summon falling_block ~ ~1 ~ {Block:stone,Time:1,Passengers:[{id:minecraft:falling_block,Block:redstone_block,Time:1,Passengers:[{id:minecraft:falling_block,Block:activator_rail,Time:1,Passengers:[
{id:minecraft:commandblock_minecart,Command:setblock ~1 ~-3 ~1 minecraft:repeating_command_block 3},
{id:minecraft:commandblock_minecart,Command:say 1},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~ ~1 command_block 0 replace {Command:fill ~ ~-2 ~-1 ~ ~ ~ air}},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~-1 ~1 redstone_block},
{id:minecraft:commandblock_minecart,Command:kill @e[type=commandblock_minecart,r=1]}]}]}]}

===================================村民专业ID===================================
0	棕色长袍村民(农民)
1	白色长袍村民(图书管理员)
2	紫色长袍村民(牧师)
3	黑色围裙村民(铁匠)
4	白色围裙村民(屠夫)
5	绿色长袍(傻子)
entitydata @e {Proffesion:1,Rotation:[270f,0f]}

=====================================魔咒ID=====================================
0	保护IV
1	火焰保护IV
2	摔落保护IV
3	爆炸保护IV
4	弹射物保护IV
5	水下呼吸III
6	水下速掘
7	荆棘III
8	深海探索者III
9	冰霜行者II
10 	绑定诅咒
16	锋利V
17	亡灵杀手V
18	节肢杀手V
19	击退II
20	火焰附加II
21	抢夺III
22	横扫之刃III
32	效率V
33	精准采集
34	耐久III
35	时运III
48	力量V
49	冲击II
50	火矢
51	无限
61	海之眷顾III
62	饵钓III
70	经验修补
71 	消失诅咒

=====================================状态效果ID=====================================

{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2970007,display:{Name:"水肺药水"},CustomPotionEffects:[{Id:13,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14719033,display:{Name:"抗火药水"},CustomPotionEffects:[{Id:12,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2039710,display:{Name:"夜视药水"},CustomPotionEffects:[{Id:16,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:8225168,display:{Name:"隐身药水"},CustomPotionEffects:[{Id:14,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:15934242,display:{Name:"饱和药水"},CustomPotionEffects:[{Id:23,Duration:20}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:13261736,display:{Name:"再生药水"},CustomPotionEffects:[{Id:10,Amplifier:1,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:8039619,display:{Name:"迅捷药水"},CustomPotionEffects:[{Id:1,Amplifier:1,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14073154,display:{Name:"急迫药水"},CustomPotionEffects:[{Id:3,Amplifier:1,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2226763,display:{Name:"跳跃药水"},CustomPotionEffects:[{Id:8,Amplifier:1,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9511714,display:{Name:"力量药水"},CustomPotionEffects:[{Id:5,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:16262179,display:{Name:"治疗药水"},CustomPotionEffects:[{Id:6,Amplifier:2}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9913401,display:{Name:"抗性药水"},CustomPotionEffects:[{Id:11,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14841103,display:{Name:"提升药水"},CustomPotionEffects:[{Id:21,Amplifier:2,Duration:9600}]}}

{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:5859967,display:{Name:"迟缓药水"},CustomPotionEffects:[{Id:2,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:4800791,display:{Name:"挖掘疲劳药水"},CustomPotionEffects:[{Id:4,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:4393481,display:{Name:"伤害药水"},CustomPotionEffects:[{Id:7,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:5512521,display:{Name:"反胃药水"},CustomPotionEffects:[{Id:9,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2039586,display:{Name:"失明药水"},CustomPotionEffects:[{Id:15,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:5731410,display:{Name:"饥饿药水"},CustomPotionEffects:[{Id:17,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:4672583,display:{Name:"虚弱药水"},CustomPotionEffects:[{Id:18,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:5083440,display:{Name:"剧毒药水"},CustomPotionEffects:[{Id:19,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:3484199,display:{Name:"凋零药水"},CustomPotionEffects:[{Id:20,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:12425542,display:{Name:"非洲药水"},CustomPotionEffects:[{Id:27,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:13565951,display:{Name:"飘浮药水"},CustomPotionEffects:[{Id:25,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9740385,display:{Name:"发光药水"},CustomPotionEffects:[{Id:24,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9740385,display:{Name:"缓降药水"},CustomPotionEffects:[{Id:28,Amplifier:2,Duration:9600}]}}

===================================   颜色   ===================================
染料数据值	染料名称	颜色		颜色(RGB)	颜色名		可染色物品数据值
0			墨囊		1644825		#191919		黑色		15
1			玫瑰红		10040115	#993333		红色		14
2			仙人掌绿	6717235		#667F33		绿色		13
3			可可豆		6704179		#664C33		棕色		12
4			青金石		3361970		#334CB2		蓝色		11
5			紫色染料	8339378		#7F3FB2		紫色		10
6			青色染料	5013401		#4C7F99		青色		9
7			淡灰色染料	10066329	#999999		淡灰色		8
8			灰色染料	5000268		#4C4C4C		灰色		7
9			粉红色染料	15892389	#F27FA5		粉红色		6
10			黄绿色染料	8375321		#7FCC19		黄绿色		5
11			蒲公英黄	15066419	#E5E533		黄色		4
12			淡蓝色染料	6724056		#6699D8		淡蓝色		3
13			品红色染料	11685080	#B24CD8		品红色		2
14			橙色染料	14188339	#D87F33		橙色		1
15			骨粉		16777215	#FFFFFF		白色		0

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"黑\",\"color\":\"black\",\"extra\":[{\"text\":\"深蓝\",\"color\":\"dark_blue\"},{\"text\":\"深绿\",\"color\":\"dark_green\"},{\"text\":\"碧绿\",\"color\":\"dark_aqua\"},{\"text\":\"深红\",\"color\":\"dark_red\"}]}",
Text2:"{\"text\":\"深紫\",\"color\":\"dark_purple\",\"extra\":[{\"text\":\"金\",\"color\":\"gold\"},{\"text\":\"灰\",\"color\":\"gray\"},{\"text\":\"深灰\",\"color\":\"dark_gray\"},{\"text\":\"蓝\",\"color\":\"blue\"}]}",
Text3:"{\"text\":\"绿\",\"color\":\"green\",\"extra\":[{\"text\":\"水绿\",\"color\":\"aqua\"},{\"text\":\"红\",\"color\":\"red\"},{\"text\":\"淡紫\",\"color\":\"light_purple\"},{\"text\":\"黄\",\"color\":\"yellow\"}]}",
Text4:"{\"text\":\"白\",\"color\":\"white\"}"}

§0	黑色	black
§1	深蓝色	dark_blue
§2	深绿色	dark_green
§3	湖蓝色	dark_aqua
§4	深红色	dark_red
§5	紫色	dark_purple
§6	金色	gold
§7	灰色	gray
§8	深灰色	dark_gray
§9	蓝色	blue
§a	绿色	green
§b	天蓝色	aqua
§c	红色	red
§d	粉色	light_purple
§e	黄色	yellow
§f	白色	white
§k	随机字符
§l	粗体
§m	删除线
§n	下划线
§o	斜体
§r	重置文字样式

==================================时运效果加成===================================
钻石、煤、绿宝石、下界石英、青金石(6)	(F+1)/2+1/(F+2)
胡萝卜、土豆							(F+5)/2
红石 									(F+9)/2
地狱疣									(F+6)/2


summon fireworks_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Flight:3b,Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[11743532,2437522,3887386,14602026,14188952,8073150],FadeColors:[15435844,6719955,12801229,2651799,4312372,5320730,3887386,15790320]}]}}}}



Text2:\"{\\\"text\\\":\\\"购买15色烟花火箭\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=50] minecraft:fireworks 1 0 {Fireworks:{Flight:3b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[],FadeColors:[,]}]}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$50\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=50] CK 50\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},




天黑放烟花
summon falling_block ~ ~1 ~ {Block:stone,Time:1,Passengers:[{id:falling_block,Block:redstone_block,Time:1,Passengers:[{id:falling_block,Block:activator_rail,Time:1,Passengers:[{id:commandblock_minecart,Command:execute @a ~5 ~ ~ summon fireworks_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},{id:commandblock_minecart,Command:execute @a ~-5 ~ ~ summon fireworks_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},{id:commandblock_minecart,Command:execute @a ~ ~ ~5 summon fireworks_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},{id:commandblock_minecart,Command:execute @a ~ ~ ~-5 summon fireworks_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},{id:commandblock_minecart,Command:setblock ~ ~ ~1 command_block 0 replace {Command:fill ~ ~-2 ~-1 ~ ~ ~ air}},{id:commandblock_minecart,Command:setblock ~ ~-1 ~1 redstone_block},{id:commandblock_minecart,Command:kill @e[type=commandblock_minecart,r=5]}]}]}]}

summon falling_block ~ ~1 ~ {Block:stone,Time:1,Passengers:[{id:minecraft:falling_block,Block:redstone_block,Time:1,Passengers:[{id:minecraft:falling_block,Block:activator_rail,Time:1,Passengers:[
{id:minecraft:commandblock_minecart,Command:execute @a ~5 ~ ~ summon FireworksRocketEntity ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},
{id:minecraft:commandblock_minecart,Command:execute @a ~-5 ~ ~ summon FireworksRocketEntity ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},
{id:minecraft:commandblock_minecart,Command:execute @a ~ ~ ~5 summon FireworksRocketEntity ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},
{id:minecraft:commandblock_minecart,Command:execute @a ~ ~ ~-5 summon FireworksRocketEntity ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~ ~1 command_block 0 replace {Command:fill ~ ~-2 ~-1 ~ ~ ~ air}},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~-1 ~1 redstone_block},
{id:minecraft:commandblock_minecart,Command:kill @e[type=commandblock_minecart,r=5]}]}]}]}










give @p written_book 1 0 {
title:"工具书",author:"一些常用的命令",AttributeModifiers:[{Operation:1,UUIDLeast:100,UUIDMost:999,Amount:3,AttributeName:"generic.movementSpeed",Name:"Speed"}],HideFlags:2,
pages:[
1:"{'text':'\n','color':'gold','extra':[
{'text':'平山 ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~ ~-15 ~15 ~30 ~15 air'}},
{'text':'填土 ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-5 ~-1 ~-5 ~5 ~-30 ~5 grass'}},
{'text':'排石 ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 grass 0 replace stone'}},
{'text':'填沙\n','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 sand 0 replace sandstone'}},

{'text':'向东填灯 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~30 62 ~ sea_lantern'}},
{'text':'向东填树叶\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~30 63 ~ leaves 6'}},
{'text':'向东填台阶 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~30 63 ~ purpur_slab'}},
{'text':'向东填石路\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~-2 ~30 62 ~2 double_stone_slab'}},

{'text':'向西填灯 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~-30 62 ~ sea_lantern'}},
{'text':'向西填树叶\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~-30 63 ~ leaves 6'}},
{'text':'向西填台阶 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~-30 63 ~ purpur_slab'}},
{'text':'向西填石路\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~-2 ~-30 62 ~2 double_stone_slab'}},

{'text':'向南填灯 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~ 62 ~30 sea_lantern'}},
{'text':'向南填树叶\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~30 leaves 6'}},
{'text':'向南填台阶 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~30 purpur_slab'}},
{'text':'向南填石路\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~-2 62 ~ ~2 62 ~30 double_stone_slab'}},

{'text':'向北填灯 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~ 62 ~-30 sea_lantern'}},
{'text':'向北填树叶\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~-30 leaves 6'}},
{'text':'向北填台阶 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~-30 purpur_slab'}},
{'text':'向北填石路\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~-2 62 ~ ~2 62 ~-30 double_stone_slab'}}
]}",
2:"{'text':'\n','color':'gold','extra':[
{'text':'前往广场\n','color':'深绿色','clickEvent':{action:'run_command',value:'/tp 175 68 212'}},
{'text':'前往市场\n','color':'深绿色','clickEvent':{action:'run_command',value:'/tp 250 65 310'}}
]}",
3:"{\"text\":\"深蓝色\",\"color\":\"dark_blue\",\"extra\":[{\"text\":\"深绿色\",\"color\":\"dark_green\"},{\"text\":\"碧绿色\",\"color\":\"dark_aqua\"},{\"text\":\"深红色\",\"color\":\"dark_red\"},{\"text\":\"深紫色\",\"color\":\"dark_purple\"},{\"text\":\"金色\",\"color\":\"gold\"},{\"text\":\"灰色\",\"color\":\"gray\"},{\"text\":\"深灰色\",\"color\":\"dark_gray\"},{\"text\":\"蓝色\",\"color\":\"blue\"},{\"text\":\"绿色\",\"color\":\"green\"}
,{\"text\":\"水绿色\",\"color\":\"aqua\"},{\"text\":\"红色\",\"color\":\"red\"},{\"text\":\"淡紫色\",\"color\":\"light_purple\"},{\"text\":\"黄色\",\"color\":\"yellow\"}]}"
]}


2 2s 2b 2f ~-2 ~.2 ~2 ~0.2




give @p written_book 1 0 {
title:"工具书",author:"一些常用的命令",
pages:[
1:"{'text':'\n','color':'gold','extra':[
{'text':'平山 ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~ ~-15 ~15 ~30 ~15 air'}},
{'text':'填土 ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-5 ~-1 ~-5 ~5 ~-30 ~5 grass'}},
{'text':'排石 ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 grass 0 replace stone'}},
{'text':'填沙\n','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 sand 0 replace sandstone'}},

{'text':'向东填灯 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~30 62 ~ sea_lantern'}},
{'text':'向东填树叶\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~30 63 ~ leaves 6'}},
{'text':'向东填台阶 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~30 63 ~ purpur_slab'}},
{'text':'向东填石路\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~-2 ~30 62 ~2 double_stone_slab'}},

{'text':'向西填灯 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~-30 62 ~ sea_lantern'}},
{'text':'向西填树叶\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~-30 63 ~ leaves 6'}},
{'text':'向西填台阶 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~-30 63 ~ purpur_slab'}},
{'text':'向西填石路\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~-2 ~-30 62 ~2 double_stone_slab'}},

{'text':'向南填灯 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~ 62 ~30 sea_lantern'}},
{'text':'向南填树叶\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~30 leaves 6'}},
{'text':'向南填台阶 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~30 purpur_slab'}},
{'text':'向南填石路\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~-2 62 ~ ~2 62 ~30 double_stone_slab'}},

{'text':'向北填灯 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~ 62 ~-30 sea_lantern'}},
{'text':'向北填树叶\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~-30 leaves 6'}},
{'text':'向北填台阶 ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~-30 purpur_slab'}},
{'text':'向北填石路\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~-2 62 ~ ~2 62 ~-30 double_stone_slab'}}
]}",
2:"{'text':'\n','color':'gold','extra':[
{'text':'前往广场\n','color':'深绿色','clickEvent':{action:'run_command',value:'/tp 175 68 212'}},
{'text':'前往市场\n','color':'深绿色','clickEvent':{action:'run_command',value:'/tp 250 65 310'}}
]}",
3:"{\"text\":\"深蓝色\",\"color\":\"dark_blue\",\"extra\":[{\"text\":\"深绿色\",\"color\":\"dark_green\"},{\"text\":\"碧绿色\",\"color\":\"dark_aqua\"},{\"text\":\"深红色\",\"color\":\"dark_red\"},{\"text\":\"深紫色\",\"color\":\"dark_purple\"},{\"text\":\"金色\",\"color\":\"gold\"},{\"text\":\"灰色\",\"color\":\"gray\"},{\"text\":\"深灰色\",\"color\":\"dark_gray\"},{\"text\":\"蓝色\",\"color\":\"blue\"},{\"text\":\"绿色\",\"color\":\"green\"}
,{\"text\":\"水绿色\",\"color\":\"aqua\"},{\"text\":\"红色\",\"color\":\"red\"},{\"text\":\"淡紫色\",\"color\":\"light_purple\"},{\"text\":\"黄色\",\"color\":\"yellow\"}]}"
]}


















give @p minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:horse,display:{Name:["生成 僵尸陷阱马"]},DeathLootTable:"user:horsezombie"}}






scoreboard players tag @e[type=item] add horsezombie {Item:{tag:{drop:"hz"}}}
execute @e[tag=horsezombie] ~ ~ ~ summon zombie ~ ~ ~
execute @e[tag=horsezombie] ~ ~ ~ summon zombie ~ ~ ~
execute @e[tag=horsezombie] ~ ~ ~ summon zombie ~ ~ ~
execute @e[tag=horsezombie] ~ ~ ~ summon zombie ~ ~ ~
kill @e[tag=horsezombie]
entitydata @e[tag=horsezombie] {Item:{tag:{drop:""}}}



setblock ~ ~ ~ wall_sign 4 replace {
Text1:"{\"text\":\"第1行\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/say 1\"}}",
Text2:"{\"text\":\"第2行\",\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/say 2\"}}",
Text3:"{\"text\":\"第3行\",\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/say 3\"}}",
Text4:"{\"text\":\"第4行\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/say 4\"}}"
}


give @p written_book{
title:"工具书",author:"作者的名字",
pages:[
"{'text':'一本神奇的书\\n','color':'gold','extra':[
{'text':'翻到第2页\\n','color':'dark_blue','clickEvent':{action:'change_page',value:'2'}},
{'text':'翻到第3页\\n','color':'dark_blue','clickEvent':{action:'change_page',value:'3'}},
{'text':'翻到第4页\\n','color':'dark_blue','clickEvent':{action:'change_page',value:'4'}}
]}",
"{'text':'\\n','color':'gold','extra':[
{'text':'说1\\n','color':'dark_blue','clickEvent':{action:'run_command',value:'/say 1'}},
{'text':'说2','color':'dark_blue','clickEvent':{action:'run_command',value:'/say 2'}}
]}",
"{'text':'\\n','color':'gold','extra':[
{'text':'前往(0,70,0)\\n','color':'深绿色','clickEvent':{action:'run_command',value:'/tp 0 70 0'}},
{'text':'自杀\\n','color':'深绿色','clickEvent':{action:'run_command',value:'/kill'}}
]}",
"{'text':'深蓝色','color':'dark_blue','extra':[{'text':'深绿色','color':'dark_green'},{'text':'碧绿色','color':'dark_aqua'},{'text':'深红色','color':'dark_red'},{'text':'深紫色','color':'dark_purple'},{'text':'金色','color':'gold'},{'text':'灰色','color':'gray'},{'text':'深灰色','color':'dark_gray'},{'text':'蓝色','color':'blue'},{'text':'绿色','color':'green'}
,{'text':'水绿色','color':'aqua'},{'text':'红色','color':'red'},{'text':'淡紫色','color':'light_purple'},{'text':'黄色','color':'yellow'}]}"
]}












253 12 -270	 zombie
244 17 -367 spider




desert
1127 126

村庄
53 2
69 -16
54 35

Spider
916 35 246
873 42 240
877 36 179

885 112








give @p minecraft:paper 1 0 {display:{Name:"UHC Run - 1v1",Lore:["","Modo: ☆ Fantasy ☆","Estado: Cargando…","Jugadores: 0/18","","iClick para entrar!"]}}



§r§6UHC Run §7- §51v1§r








{EntityTag:{id:minecraft:vex,Health:1,Tags:[\"bird\"],Silent:1,LifeTicks:1},display:{Name:\"§r生成 鸟\"}}"},"text":"购买鸟"}







give @p minecraft:leather_leggings 1 0 {AttributeModifiers:[{Operation:0,UUIDLeast:3001,UUIDMost:3001,Amount:8,AttributeName:"generic.armor",Name:"Armor"},{Operation:0,UUIDLeast:4001,UUIDMost:4001,Amount:2,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:1},{id:34,lvl:1},{id:70,lvl:1}],display:{Lore:["+2 盔甲韧性"]},HideFlags:2}



give @p minecraft:leather_leggings 1 0 {AttributeModifiers:[{Operation:0,UUIDLeast:3001,UUIDMost:3001,Amount:8,AttributeName:"generic.armor",Name:"Armor"}]}




give @p minecraft:leather_leggings 1 0 {AttributeModifiers:[{Operation:0,UUIDLeast:4001,UUIDMost:4001,Amount:2,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:1},{id:34,lvl:1},{id:70,lvl:1}],display:{Lore:["+2 盔甲韧性"]},HideFlags:2}



give @p minecraft:leather_chestplate 1 -1 {AttributeModifiers:[{Operation:0,UUIDLeast:2049170248,UUIDMost:2049170248,Amount:8,AttributeName:"generic.armor",Name:"Armor",Slot:chest},{Operation:0,UUIDLeast:1345884052,UUIDMost:1345884052,Amount:2,AttributeName:"generic.armorToughness",Name:"ArmorToughness",Slot:chest}],Unbreakable:1}


give @p minecraft:leather_chestplate 1 -1 {AttributeModifiers:[{Operation:0,UUIDLeast:2049170248,UUIDMost:2049170248,Amount:8,AttributeName:generic.armor,Name:Armor,Slot:chest},{Operation:0,UUIDLeast:1345884052,UUIDMost:1345884052,Amount:2,AttributeName:generic.armorToughness,Name:ArmorToughness,Slot:chest}],Unbreakable:1}



summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block"}








scoreboard players add @p test 1
scoreboard players remove @p[score_test_min=30] test 30
testfor @e[score_test_min=29]





/give @p skull 1 3 {display:{Name:"Dog"},SkullOwner:{Id:"fa5d3210-6e39-47ca-adb4-a3b2f0f966d9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlkMWQzMTEzZWM0M2FjMjk2MWRkNTlmMjgxNzVmYjQ3MTg4NzNjNmM0NDhkZmNhODcyMjMxN2Q2NyJ9fX0="}]}},AttributeModifiers:[{Slot:"head",Operation:1,UUIDLeast:1009,UUIDMost:1009,Amount:0.1,AttributeName:"generic.movementSpeed",Name:"Speed"}],ench:[{id:71,lvl:1}],display:{Name:"狗头",Lore:["与时间赛跑"]}}


/entitydata @e[r=1] {display:{Name:"Dog"},AttributeModifiers:[{Slot:"head",Operation:1,UUIDLeast:1009,UUIDMost:1009,Amount:0.1,AttributeName:"generic.movementSpeed",Name:"Speed"}],ench:[{id:71,lvl:1}],display:{Name:"狗头",Lore:["与时间赛跑"]}}


,HideFlags:2}



tellraw maifueller {"text":"抓到你了……","color":"gold"}



tellraw @p {"text":"\建设中……敬请期待","color":"gold"}





/give @p skull 1 3 {display:{Name:"Dog"},SkullOwner:{Id:"fa5d3210-6e39-47ca-adb4-a3b2f0f966d9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlkMWQzMTEzZWM0M2FjMjk2MWRkNTlmMjgxNzVmYjQ3MTg4NzNjNmM0NDhkZmNhODcyMjMxN2Q2NyJ9fX0="}]}},AttributeModifiers:[{Slot:"head",Operation:1,UUIDLeast:1009,UUIDMost:1009,Amount:0.1,AttributeName:"generic.movementSpeed",Name:"Speed"}],ench:[{id:71,lvl:1}],display:{Name:"狗头",Lore:["与时间赛跑"]}}





tellraw ruhuasiyu {"text":"点击此处可获得宝箱一个……","color":"gold","clickEvent":{"action":"run_command","value":"/give ruhuasiyu chest 1 0"}}








/scoreboard players test #Byushu kills 0 0



/scoreboard players set #ten kills 10
/scoreboard players operation #Byushu kills = 蓝队 kills
/scoreboard players operation #Byushu kills %= #ten kills
/scoreboard players operation #Bshang kills = 蓝队 kills
/scoreboard players operation #Bshang kills -= #Byushu kills
/scoreboard players operation #Bshang kills /= #ten kills



/setblock -178 93 -26 redstone_block




setblock ~ ~ ~ wall_sign 5 replace {Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"【土球致辞】\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @a {\\\"text\\\":\\\"[world] <\u00a76至尊闪亮服主头衔>-<\u00a7czzzz_ustc> 欢迎大家来参加我们USTC-Minecraft五周目的pvp活动！\\\"}\"}}",
Text3:"{\"text\":\"\",\"color\":\"black\"}",Text4:"{\"text\":\"\"}"}




tellraw @a [{"text":"恭喜","color":"gold"},{"selector":"@p[r=2,c=-1]","color":"aqua"},{"text":"完成任务初级膜法师并获得奖章!","color":"gold"}]
tellraw @a [{"text":"恭喜","color":"gold"},{"selector":"@p[r=2,c=-1]","color":"aqua"},{"text":"完成任务中级膜法师并获得奖章!","color":"gold"}]







summon villager 127 65.5 -173 {NoGravity:1,NoAI:1,Invulnerable:1,ActiveEffects:[{Id:14,ShowParticles:0b,Duration:9999999}],ArmorItems:[{},{},{},{id:"minecraft:dragon_egg",Count:1b,Damage:0s}]}

summon villager ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"a60c9655-b7eb-47ca-91c0-7851e4bd8274",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhhYzE5OGI4ODUwMWM5NDhhOTMzZDUyYjExMzNlM2Y2NTAyY2M1ZmY1YWNlM2Q1YzYwYWNlYjU0NDk3NzZkIn19fQ=="}]}}}}]}


give ruhuasiyu minecraft:tipped_arrow 64 0 {CustomPotionEffects:[
{Id:2,Amplifier:2,Duration:8000},
{Id:4,Amplifier:2,Duration:8000},
{Id:7,Amplifier:2,Duration:8000},
{Id:19,Amplifier:2,Duration:8000}]
}

/give @p skull 1 3 {display:{Name:"Santa Claus"},SkullOwner:{Id:"a60c9655-b7eb-47ca-91c0-7851e4bd8274",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhhYzE5OGI4ODUwMWM5NDhhOTMzZDUyYjExMzNlM2Y2NTAyY2M1ZmY1YWNlM2Q1YzYwYWNlYjU0NDk3NzZkIn19fQ=="}]}}}

give ruhuasiyu minecraft:tipped_arrow 64 0 {CustomPotionEffects:[
{Id:6,Amplifier:2,Duration:8000},
{Id:10,Amplifier:2,Duration:8000}]
}


give ruhuasiyu minecraft:fireworks 1 0 {Fireworks:{Flight:2b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[11743532,2437522,3887386,14602026,14188952,8073150],FadeColors:[15435844,6719955,12801229,2651799,4312372,5320730,3887386,15790320,]}]}}


give ruhuasiyu minecraft:fireworks 1 0 {Fireworks:{Flight:4b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[11743532,2437522,3887386,14602026,14188952,8073150],FadeColors:[15435844,6719955,12801229,2651799,4312372,5320730,3887386,15790320,]}]}}



testfor @a[x=115,y=63,z=208,dx=30,dy=15,dz=20]
tellraw @p {"text":"欢迎来到ruhuasiyu的家!","color":"yellow"}




summon villager ~ ~ ~ {NoGravity:1,NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate",Count:1b}]}



entitydata @e[r=2] {OwnerUUID:1b26ddd5-1e2d-31ca-b17f-a511f522bf75}

give ruhuasiyu minecraft:spawn_egg 1 0 {display:{Name:"矿物探测器"},EntityTag:{id:minecraft:mooshroom,Tags:["findore2"],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Duration:9,ShowParticles:0b}],DeathLootTable:minecraft:empty},ench:[{id:999}]}





summon minecraft:evocation_illager ~ ~ ~ {NoAI:true,SpellTicks:80}



execute @e[r=5] ~ ~ ~ tp @e[r=1] ~ ~ ~0.1 ~0.1 ~ ~



setblock 322 66 -228 standing_sign 0 replace {Text1:"{\"text\":\"Intel Pentyum\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @p {\\\"text\\\":\\\"灯,等灯等灯\\\",\\\"color\\\":\\\"gold\\\"}\"}}",Text2:"{\"text\":\"inside\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"\"}}",Text3:"{\"text\":\"\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"\"}}",Text4:"{\"text\":\"\"}"}




\\\u00a79
setblock ~ ~ ~1 wall_sign 3 replace {Text1:"{\"text\":\"aaa\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~ ~ ~-1 {auto:0b,Command:give ruhuasiyu minecraft:potion 1 0 {CustomPotionColor:5083440,display:{Name:\\\"\u00a7r剧毒药水\\\",Lore:[\\\"\u00a7c中毒 (8:00)\\\"]},CustomPotionEffects:[{Id:21,Duration:9600}],HideFlags:63}}\"}}",Text2:"{\"text\":\"aaa\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~ ~ ~-1 {auto:1b}\"}}",Text3:"{\"text\":\"aaa\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~ ~ ~-1 {auto:0b}\"}}",Text4:"{\"text\":\"\"}"}



setblock ~ ~ ~1 wall_sign 3 replace {Text1:"{\"text\":\"\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"say 1\"}}",
Text2:"{\"text\":\"\"}",Text3:"{\"text\":\"\"}",Text4:"{\"text\":\"\"}"}





give @p written_book{
title:"新手指引",
author:"Stan",
pages:[
"{\"text\":\"\\ufb00\\ufb01\\ufb02\\ufb03\\ufb04\\ufb05\\ufb06\\ufb07\\ufb08\",\"color\":\"white\"}"]}