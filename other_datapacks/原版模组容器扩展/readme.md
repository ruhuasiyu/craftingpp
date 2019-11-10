# 原版模组容器扩展
现已支持：
+ [更多箱子](https://www.curseforge.com/minecraft/mc-mods/iron-chests)：除了泥土箱子外的所有箱子
+ [更多潜影盒](https://www.curseforge.com/minecraft/mc-mods/iron-shulker-boxes)：所有潜影盒
+ [石箱子](https://www.curseforge.com/minecraft/mc-mods/stone-chest)：所有箱子

## 开发者手册
### 调用
若要调用本模组，方块标签`#container:all`为所有可使用的容器，其中`#container:chests`为大箱子。函数标签`#container:check`为判断容器容量的：
```
execute if block ~ ~ ~ [方块id] run scoreboard players remove @s container [容器容量]
```

### 扩展
若要添加更多容器，请在方块标签`#container:all`中添加相应`方块id`。
若为大箱子，需要添加至方块标签`#container:chests`。
然后在函数标签`#container:check`的函数中添加
```
execute if block ~ ~ ~ [方块id] run scoreboard players remove @s container [容器容量]
```
