![过期](https://www.mcbbs.net/static/image/stamp/timeout.gif)
# 方块通用处理
本模组并非具有实际效果的模组，而是为了给原版模组的方块基本操作提供功能。使用本模组作为前置后，方块的放置、破坏、机器的基本操作都无需再编写函数来处理了。

例如，放置模组内方块时，本来用视线追踪即可实现，然而放置不完整方块（作物、树苗、告示牌等），或者在台阶上放置方块等情形，要做进一步的调整才可将bug调至最低。而使用本前置模组后，无需再考虑这些问题，只需要专心设计方块内容即可。

本模组支持的版本为：19w38a-19w39a

## 前置检测
+ 请在使用本前置的数据包的加载函数添加
```
scoreboard players set #datapack_cpp_block cppValue 0
function cpp_block:datapack
execute if score #datapack_cpp_block cppValue matches 0 run tellraw @a {"text":"[xx模组]：缺少必要的数据包前置[方块通用处理]！"}
```

## 方块的放置
+ 事件：玩家放置方块
+ 条件：方块拥有`tag.id`标签
+ 结果：在方块位置`align xyz positioned ~0.5 ~ ~0.5`处生成盔甲架，盔甲架头部为放置的方块物品，标签为`cpp_block`；执行函数标签`#cpp_block:put`
+ 接口：使用函数标签`#cpp_block:put`来添加额外的指令，其中
	+ `@s`为放置方块的玩家
	+ `@e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1]` 为放置的盔甲架
	+ 执行位置为盔甲架位置
	+ 若要改变盔甲架位置，请勿将其放置在方块中心0.5米外的位置
+ 注意事项
	+ 一般而言，放置告示牌等不完整方块，需要做额外处理
	+ 一般而言，放置植物等物品和方块为不同模型的方块，需要做额外处理
	+ 支持原版所有生存可破坏的方块和屏障

## 方块的破坏
+ 事件：玩家破坏方块
+ 条件：方块处拥有标签为`cpp_block`的盔甲架
+ 结果：执行函数标签`#cpp_block:break`；将最近的`Age:0s`或`Age:1s`的物品修改为盔甲架头部物品，杀死相应盔甲架；执行函数标签`#cpp_block:break_drop`
+ 接口：使用函数标签`#cpp_block:break`来添加额外的指令，其中
	+ `@s`为盔甲架
	+ 执行位置为盔甲架位置
	+ 通过修改盔甲架头部物来实现修改掉落品
+ 接口：使用函数标签`#cpp_block:break_drop`来添加额外的掉落物
+ 注意事项
	+ 若放置时对物品做了修改，破坏时需要反向修改会原物品
	+ 屏障默认无掉落

## 机器的处理
+ 目标：拥有`cpp_block`标签的盔甲架，且其头部物品拥有`hasGUI:1b`标签
+ 目标：下方漏斗，下方漏斗矿车，掉落物，玩家
+ 结果：禁止漏斗吸取，清除漏斗和漏斗矿车内、地面、玩家背包内拥有标签`isMachineBg:1b`的物品
+ 接口：为你的机器内的所有用于图形界面的物品添加标签`isMachineBg:1b`即可
+ 默认只支持物品石化橡木台阶、淡灰色染色玻璃板和烟火之星，如果需要可以在物品标签`#cpp_block:machine_gui`中额外添加

## 机器的输出
+ 事件：执行函数`cpp_block:dist`
+ 结果：将存储的物品信息输出到当前位置的容器，支持大箱子
	+ 位置：根据执行者记分板`cppOutputFace`修改输出位置(1-6,东南西北上下)；若修改后的位置处容器已满，会尝试输出到大箱子的另一半
	+ 物品信息来源：`storage cpp_block:dist Item`
	+ 若当前位置无容器、容器已满、大箱子两个全满，则输出失败；否则会成功输出，会为执行者添加标签`cpp_block_dist_success`
+ 也可执行函数`cpp_block:dist/pos`来直接指定当前位置为输出位置
+ 扩展：若要支持更多容器
	+ 方块标签`#container:all`内添加容器`方块id`
	+ 方块标签`#container:chests`内添加占据两格的大箱子`方块id`，需与原版橡木箱子拥有相同的方块状态
	+ 函数标签`#container:check`内添加函数，函数指令为
	``` execute if block ~ ~ ~ [方块id] run scoreboard players remove @s container [容器容量] ```
	+ 可以直接添加[原版模组容器扩展](https://github.com/ruhuasiyu/CraftingPlusPlus/tree/master/other_datapacks/%E5%8E%9F%E7%89%88%E6%A8%A1%E7%BB%84%E5%AE%B9%E5%99%A8%E6%89%A9%E5%B1%95)中的数据包来支持相应模组

## 检测强充能
+ 事件：执行函数`cpp_block:check_power`
+ 结果：若当前位置被强充能(不识别本身方块是否可被充能)，则为执行者添加标签`cpp_block_redstone_powered`
+ 注意：
	+ 仅识别原版红石元件
	+ 不识别陷阱箱

## 例子
创建文件`craftingpp\data\cpp\loot_tables\moon_stone.json`
```
    {
        "pools": [
            {
                "rolls": 1,
                "entries": [
                    {
                        "type": "minecraft:item",
                        "name": "minecraft:gold_block",
                        "functions": [
                            {
                                "function": "minecraft:set_nbt",
                                "tag": "{display:{Name:"{\\"translate\\":\\"item.cpp.moon_stone\\"}"},id:"cpp:moon_stone",CustomModelData:12970001}"
                            }
                        ]
                    }
                ]
            }
        ]
    }
```
然后`loot give @s loot cpp:moon_stone`并创建相应模型，即可自动放置和破坏。
![](https://i.loli.net/2019/09/29/4bPZfQtlJpyqjLG.png)

创建文件`craftingpp\data\cpp\loot_tables\all_in_one_machine.json`
```
    {
        "pools": [
            {
                "rolls": 1,
                "entries": [
                    {
                        "type": "minecraft:item",
                        "name": "minecraft:barrel",
                        "functions": [
                            {
                                "function": "minecraft:set_nbt",
                                "tag": "{display:{Name:"{\\"translate\\":\\"item.cpp.all_in_one_machine\\"}"},id:"cpp:all_in_one_machine",CustomModelData:12970001,hasGUI:1b}"
                            }
                        ]
                    }
                ]
            }
        ]
    }
```
然后`loot give @s loot cpp:all_in_one_machine`并创建相应模型和机器背景板。机器的背景高频放置、产出、经验条、选项等操作需要额外编写。
![](https://i.loli.net/2019/09/29/glqRTmQcS5kVjEs.png)

## 更新日志
### 1.3
+ 添加了检测数据包是否存在的方式。

### 1.2 2019/10/02
+ 方块破坏后会先处理掉机器背景物品。
+ 添加了函数标签`#cpp_block:break_drop`来添加额外的掉落物。

### 1.1 2019/09/30
+ 移除了无用的函数。
+ 物品标签`#cpp_block:machine_gui`中添加了石化橡木台阶。

### 1.0 2019/09/29
+ 提交第一个版本。