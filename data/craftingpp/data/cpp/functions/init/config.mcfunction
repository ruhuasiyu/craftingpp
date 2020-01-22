# 是否为空岛模式
scoreboard players set $skyislandMode cppConfig 0
execute if block ~ 1 ~ minecraft:air run scoreboard players set $skyislandMode cppConfig 1
# 是否加强僵尸、僵尸村民和尸壳
scoreboard players set $doZombieImproving cppConfig 1
# 是否加强骷髅和流浪者
scoreboard players set $doSkeletonImproving cppConfig 1
# 是否加强凋灵骷髅
scoreboard players set $doWitherSkeletonImproving cppConfig 1
# 是否加强爬行者
scoreboard players set $doCreeperImproving cppConfig 1
# 是否生成黑暗动物
scoreboard players set $doDarkAnimalSpawning cppConfig 1
# 是否开启蝙蝠骚话
scoreboard players set $forestBatWords cppConfig 1
# 模组树生长阶段数
scoreboard players set $modTreeAgeMax cppConfig 2
# 模组树树叶转化基数
scoreboard players set $modLeavesThreshold cppConfig 3600
# 多功能一体机工作周期
scoreboard players set $allInOneMachinePeriod cppConfig 1200
# 是否允许交易机使用创造模式
scoreboard players set $doTradeCreate cppConfig 0
# 生物投影仪工作周期
scoreboard players set $mobProjectorPeriod cppConfig 2400
# 仪式耗时
scoreboard players set $ritualsTime cppConfig 1200
# 傀儡最多可不接触控制方块移动多少格
scoreboard players set $golemMoveMax cppConfig 80
# 空岛玩家间距
scoreboard players set $skyislandDistance cppConfig 1000
