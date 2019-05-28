scoreboard objectives add cppValue dummy
scoreboard players set #craftingpp cppValue 1
# 生命值
scoreboard objectives add cppHealth health
# 使用附魔之瓶
scoreboard objectives add cppUseXpBottle minecraft.used:minecraft.experience_bottle
# 使用胡萝卜钓竿
scoreboard objectives add cppUseCSt minecraft.used:minecraft.carrot_on_a_stick
# 使用斧(连锁效果)
scoreboard objectives add cppUseAxe1 minecraft.used:minecraft.diamond_axe
scoreboard objectives add cppUseAxe2 minecraft.used:minecraft.iron_axe
scoreboard objectives add cppUseAxe3 minecraft.used:minecraft.golden_axe
scoreboard objectives add cppUseAxe4 minecraft.used:minecraft.stone_axe
# 使用镐(连锁效果)
scoreboard objectives add cppUsePick1 minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add cppUsePick2 minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add cppUsePick3 minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add cppUsePick4 minecraft.used:minecraft.stone_pickaxe
# 使用锹(连锁效果)
scoreboard objectives add cppUseShovel1 minecraft.used:minecraft.diamond_shovel
scoreboard objectives add cppUseShovel2 minecraft.used:minecraft.iron_shovel
scoreboard objectives add cppUseShovel3 minecraft.used:minecraft.golden_shovel
scoreboard objectives add cppUseShovel4 minecraft.used:minecraft.stone_shovel

# 按下Shift
scoreboard objectives add cppSneakTime minecraft.custom:minecraft.sneak_time
# 跳跃
scoreboard objectives add cppJump minecraft.custom:minecraft.jump
# 打开箱子(安装插件)
scoreboard objectives remove cppOpenFrame
scoreboard objectives add cppOpenFrame minecraft.custom:minecraft.open_barrel
# 交互发射器(仪式)
scoreboard objectives add cppInsDisp minecraft.custom:minecraft.inspect_dispenser

# 玩家数字ID
scoreboard objectives add cppID dummy
# 玩家经验值
scoreboard objectives add cppXpTotal dummy
# 各种计时
scoreboard objectives add cppTick dummy
# 随机数
scoreboard objectives add cppRandom dummy
# 多功能一体机
scoreboard objectives add cppPressure dummy
scoreboard objectives add cppTemperature dummy
scoreboard objectives add cppOutputFace dummy
scoreboard objectives add cppStoredxp dummy
scoreboard objectives add cppMacType dummy
# 检测堵塞
scoreboard objectives add cppSlotsDown dummy
# 信标增强器
scoreboard objectives add cppPlayerEff dummy
scoreboard objectives add cppMobEff dummy
scoreboard objectives add cppMobType dummy
# 傀儡朝向
scoreboard objectives add cppGolemFace dummy
# 年长者之教诲计时
scoreboard objectives add cppBook dummy
# 坐标
scoreboard objectives add cppPos dummy
# 肥胖度
scoreboard objectives add cppFat dummy
# 变异
scoreboard objectives add cppHybrid dummy
# 树苗生长阶段
scoreboard objectives add cppAge dummy
# 魔杖等级
scoreboard objectives add cppWandLevel dummy
scoreboard objectives add cppRitualType dummy
# 附魔书魔咒类型
scoreboard objectives add cppEnchSort dummy
scoreboard objectives add cppEnchid dummy
# 连锁
scoreboard objectives add cppChainTick dummy
# 连锁耐久等级
scoreboard objectives add cppChainDam dummy
# 魔法
scoreboard objectives add cppThisKey dummy
scoreboard objectives add cppLastKey dummy
scoreboard objectives add cppKey dummy
scoreboard objectives add cppMana dummy
scoreboard objectives add cppNoAITick dummy
scoreboard objectives add cppMSneak minecraft.custom:minecraft.sneak_time

# 参数调整
function cpp:config
execute if score #xp_in_bottle cppValue matches ..8 run scoreboard players set #xp_in_bottle cppValue 9
execute if score #xp_in_bottle cppValue matches 65.. run scoreboard players set #xp_in_bottle cppValue 64

# 机器使用附魔之瓶阈值
scoreboard players set #machine_xp_base cppValue 48
scoreboard players operation #machine_xp_base cppValue -= #xp_in_bottle cppValue
execute if score #machine_xp_base cppValue matches ..2 run scoreboard players set #machine_xp_base cppValue 3

# 初始化熔炼机矿物倍率
execute unless score #load_smelt_ratio cppValue matches 1 run function cpp:load_smelt_ratio
# 初始化附魔对应
execute unless score #load_enchant cppValue matches 1 run function cpp:load_enchant

# 是否开启空岛模式
# -1自动关闭，0手动关闭，1手动开启，2自动开启
execute unless score #load_block_sky_domain cppValue matches 0..1 if block ~ 0 ~ bedrock run scoreboard players set #load_block_sky_domain cppValue -1
execute unless score #load_block_sky_domain cppValue matches 0..1 unless block ~ 0 ~ bedrock run scoreboard players set #load_block_sky_domain cppValue 2
execute if score #load_block_sky_domain cppValue matches -1..0 run datapack disable "file/block_sky_domain"
execute if score #load_block_sky_domain cppValue matches 1..2 run datapack enable "file/block_sky_domain"

# 称号
scoreboard objectives add cppTitle trigger
team add cppTitle1
team modify cppTitle1 prefix {"translate":"title.cpp.1"}
team add cppTitle2
team modify cppTitle2 prefix {"translate":"title.cpp.2"}
team add cppTitle3
team modify cppTitle3 prefix {"translate":"title.cpp.3"}
team add cppTitle4
team modify cppTitle4 prefix {"translate":"title.cpp.4"}
team add cppTitle5
team modify cppTitle5 prefix {"translate":"title.cpp.5"}
team add cppTitle6
team modify cppTitle6 prefix {"translate":"title.cpp.6"}
team add cppTitle7
team modify cppTitle7 prefix {"translate":"title.cpp.7"}
team add cppTitle8
team modify cppTitle8 prefix {"translate":"title.cpp.8"}
team add cppTitle9
team modify cppTitle9 prefix {"translate":"title.cpp.9"}
team add cppTitle10
team modify cppTitle10 prefix {"translate":"title.cpp.10"}
team add cppTitle11
team modify cppTitle11 prefix {"translate":"title.cpp.11"}
team add cppTitle12
team modify cppTitle12 prefix {"translate":"title.cpp.12"}
team add cppTitle13
team modify cppTitle13 prefix {"translate":"title.cpp.13"}
team add cppTitle14
team modify cppTitle14 prefix {"translate":"title.cpp.14"}
team add cppTitle15
team modify cppTitle15 prefix {"translate":"title.cpp.15"}
team add cppTitle16
team modify cppTitle16 prefix {"translate":"title.cpp.16"}
team add cppTitle17
team modify cppTitle17 prefix {"translate":"title.cpp.17"}
team add cppTitle18
team modify cppTitle18 prefix {"translate":"title.cpp.18"}
team add cppTitle19
team modify cppTitle19 prefix {"translate":"title.cpp.19"}
team add cppTitle20
team modify cppTitle20 prefix {"translate":"title.cpp.20"}
team add cppTitle21
team modify cppTitle21 prefix {"translate":"title.cpp.21"}
team add cppTitle22
team modify cppTitle22 prefix {"translate":"title.cpp.22"}
team add cppTitle23
team modify cppTitle23 prefix {"translate":"title.cpp.23"}
team add cppTitle24
team modify cppTitle24 prefix {"translate":"title.cpp.24"}
team add cppTitle25
team modify cppTitle25 prefix {"translate":"title.cpp.25"}
team add cppTitle26
team modify cppTitle26 prefix {"translate":"title.cpp.26"}
team add cppTitle27
team modify cppTitle27 prefix {"translate":"title.cpp.27"}
team add cppTitle28
team modify cppTitle28 prefix {"translate":"title.cpp.28"}
team add cppTitle29
team modify cppTitle29 prefix {"translate":"title.cpp.29"}
team add cppTitle30
team modify cppTitle30 prefix {"translate":"title.cpp.30"}
team add cppTitle31
team modify cppTitle31 prefix {"translate":"title.cpp.31"}
team add cppTitle32
team modify cppTitle32 prefix {"translate":"title.cpp.32"}
team add cppTitle33
team modify cppTitle33 prefix {"translate":"title.cpp.33"}
team add cppTitle34
team modify cppTitle34 prefix {"translate":"title.cpp.34"}
team add cppTitle35
team modify cppTitle35 prefix {"translate":"title.cpp.35"}
team add cppTitle36
team modify cppTitle36 prefix {"translate":"title.cpp.36"}
team add cppTitle37
team modify cppTitle37 prefix {"translate":"title.cpp.37"}
team add cppTitle38
team modify cppTitle38 prefix {"translate":"title.cpp.38"}
team add cppTitle39
team modify cppTitle39 prefix {"translate":"title.cpp.39"}
team add cppTitle40
team modify cppTitle40 prefix {"translate":"title.cpp.40"}
team add cppTitle41
team modify cppTitle41 prefix {"translate":"title.cpp.41"}
team add cppTitle42
team modify cppTitle42 prefix {"translate":"title.cpp.42"}
team add cppTitle43
team modify cppTitle43 prefix {"translate":"title.cpp.43"}
team add cppTitle44
team modify cppTitle44 prefix {"translate":"title.cpp.44"}
team add cppTitle45
team modify cppTitle45 prefix {"translate":"title.cpp.45"}
team add cppTitle46
team modify cppTitle46 prefix {"translate":"title.cpp.46"}
team add cppTitle47
team modify cppTitle47 prefix {"translate":"title.cpp.47"}
team add cppTitle48
team modify cppTitle48 prefix {"translate":"title.cpp.48"}
team add cppTitle49
team modify cppTitle49 prefix {"translate":"title.cpp.49"}
team add cppTitle50
team modify cppTitle50 prefix {"translate":"title.cpp.50"}
team add cppTitle51
team modify cppTitle51 prefix {"translate":"title.cpp.51"}
team add cppTitle52
team modify cppTitle52 prefix {"translate":"title.cpp.52"}
team add cppTitle53
team modify cppTitle53 prefix {"translate":"title.cpp.53"}
team add cppTitle54
team modify cppTitle54 prefix {"translate":"title.cpp.54"}
team add cppTitle55
team modify cppTitle55 prefix {"translate":"title.cpp.55"}
team add cppTitle56
team modify cppTitle56 prefix {"translate":"title.cpp.56"}
team add cppTitle57
team modify cppTitle57 prefix {"translate":"title.cpp.57"}
team add cppTitle58
team modify cppTitle58 prefix {"translate":"title.cpp.58"}
team add cppTitle59
team modify cppTitle59 prefix {"translate":"title.cpp.59"}
team add cppTitle60
team modify cppTitle60 prefix {"translate":"title.cpp.60"}
team add cppTitle61
team modify cppTitle61 prefix {"translate":"title.cpp.61"}
team add cppTitle62
team modify cppTitle62 prefix {"translate":"title.cpp.62"}
team add cppTitle63
team modify cppTitle63 prefix {"translate":"title.cpp.63"}
team add cppTitle64
team modify cppTitle64 prefix {"translate":"title.cpp.64"}
team add cppTitle65
team modify cppTitle65 prefix {"translate":"title.cpp.65"}
team add cppTitle66
team modify cppTitle66 prefix {"translate":"title.cpp.66"}
team add cppTitle67
team modify cppTitle67 prefix {"translate":"title.cpp.67"}
team add cppTitle68
team modify cppTitle68 prefix {"translate":"title.cpp.68"}
team add cppTitle69
team modify cppTitle69 prefix {"translate":"title.cpp.69"}
team add cppTitle70
team modify cppTitle70 prefix {"translate":"title.cpp.70"}
team add cppTitle71
team modify cppTitle71 prefix {"translate":"title.cpp.71"}
team add cppTitle72
team modify cppTitle72 prefix {"translate":"title.cpp.72"}
team add cppTitle73
team modify cppTitle73 prefix {"translate":"title.cpp.73"}
team add cppTitle74
team modify cppTitle74 prefix {"translate":"title.cpp.74"}
team add cppTitle75
team modify cppTitle75 prefix {"translate":"title.cpp.75"}
team add cppTitle76
team modify cppTitle76 prefix {"translate":"title.cpp.76"}
team add cppTitle77
team modify cppTitle77 prefix {"translate":"title.cpp.77"}
team add cppTitle78
team modify cppTitle78 prefix {"translate":"title.cpp.78"}
team add cppTitle79
team modify cppTitle79 prefix {"translate":"title.cpp.79"}
team add cppTitle80
team modify cppTitle80 prefix {"translate":"title.cpp.80"}
team add cppTitle81
team modify cppTitle81 prefix {"translate":"title.cpp.81"}
team add cppTitle82
team modify cppTitle82 prefix {"translate":"title.cpp.82"}
team add cppTitle83
team modify cppTitle83 prefix {"translate":"title.cpp.83"}
team add cppTitle84
team modify cppTitle84 prefix {"translate":"title.cpp.84"}
team add cppTitle85
team modify cppTitle85 prefix {"translate":"title.cpp.85"}
team add cppTitle86
team modify cppTitle86 prefix {"translate":"title.cpp.86"}
team add cppTitle87
team modify cppTitle87 prefix {"translate":"title.cpp.87"}
team add cppTitle88
team modify cppTitle88 prefix {"translate":"title.cpp.88"}
team add cppTitle89
team modify cppTitle89 prefix {"translate":"title.cpp.89"}
team add cppTitle90
team modify cppTitle90 prefix {"translate":"title.cpp.90"}
team add cppTitle91
team modify cppTitle91 prefix {"translate":"title.cpp.91"}
team add cppTitle92
team modify cppTitle92 prefix {"translate":"title.cpp.92"}
team add cppTitle93
team modify cppTitle93 prefix {"translate":"title.cpp.93"}
team add cppTitle94
team modify cppTitle94 prefix {"translate":"title.cpp.94"}
team add cppTitle95
team modify cppTitle95 prefix {"translate":"title.cpp.95"}
team add cppTitle96
team modify cppTitle96 prefix {"translate":"title.cpp.96"}
team add cppTitle97
team modify cppTitle97 prefix {"translate":"title.cpp.97"}
team add cppTitle98
team modify cppTitle98 prefix {"translate":"title.cpp.98"}
team add cppTitle99
team modify cppTitle99 prefix {"translate":"title.cpp.99"}
team add cppTitle100
team modify cppTitle100 prefix {"translate":"title.cpp.100"}

function cpp:tick20
function cpp:tick50
function cpp:tick200

tellraw @a [{"text":"§6[Crafting++] "},{"translate":"The"},{"text":" "},{"translate":"resourcepack"},{"text":" "},{"translate":"does"},{"text":" "},{"translate":"not"},{"text":" "},{"translate":"Install","clickEvent":{"action":"open_url","value":"http://home.ustc.edu.cn/~zsxqq/craftingpp"}},{"text":" "},{"translate":"correctly"},{"text":" "},{"translate":"or"},{"text":" "},{"translate":"Launch"},{"text":"."}]]
