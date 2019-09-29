# 合成通用处理
本模组支持的版本为：19w38a-19w39a
需要【方块通用处理】作为前置。
需要配套资源包，包含合成台、图形界面、按钮等内容。

## 合成台配方
+ 合成台为石化橡木台阶，请自行为其添加配方
+ 或`barrel{id:"cpp:crafting_machine"}`

## 合成表
在函数标签#cpp_craft:craft中添加函数，内容格式为
```
execute as @s[scores={cppValue=原材料数量}] if block ~ ~ ~ barrel{Items:[Slot:1b,2b,3b,10b,11b,12b,19b,20b,21b为配方信息]} run loot replace block ~ ~ ~ container.16 loot 产物战利品表
```
例如
```
execute as @s[scores={cppValue=9}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:blue_dye"},{Slot:3b,id:"minecraft:blue_dye"},{Slot:19b,id:"minecraft:blue_dye"},{Slot:21b,id:"minecraft:blue_dye"},{Slot:2b,id:"minecraft:coal"},{Slot:10b,id:"minecraft:coal"},{Slot:12b,id:"minecraft:coal"},{Slot:20b,id:"minecraft:coal"},{Slot:11b,tag:{id:"cpp:wing_of_sky"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:blue_force_of_sky
```
```
execute as @s[scores={cppValue=4}] if block ~ ~ ~ barrel{Items:[{id:"minecraft:bone_meal"},{id:"minecraft:rotten_flesh"},{id:"minecraft:charcoal"},{id:"minecraft:gunpowder"}]} run loot replace block ~ ~ ~ container.16 loot cpp:craft/fertilizer
```
`
支持无序合成，但不支持多项同种物品的无序合成。

通常情形每个原材料会被消耗掉1个，如果想要不消耗，或者实现水桶变成桶之类的操作，在添加配方后修改相应物品id和数量即可，例如
```
execute if block ~ ~ ~ barrel{Items:[{Slot:19b,id:"minecraft:lava_bucket"},{Slot:20b,tag:{id:"cpp:nova_of_fire"}},{Slot:21b,id:"minecraft:lava_bucket"}]} run loot replace block ~ ~ ~ container.16 loot cpp:high_temperature_plugin
execute if block ~ ~ ~ barrel{Items:[{Slot:19b,id:"minecraft:lava_bucket"},{Slot:20b,tag:{id:"cpp:nova_of_fire"}},{Slot:21b,id:"minecraft:lava_bucket"}]} run data modify block ~ ~ ~ Items[{id:"minecraft:lava_bucket"}].Count set value 2
```

## 更新日志
### v1.0 2019/09/29
+ 提交第一个版本。