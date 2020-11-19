# 积雪
原版下雪天的雪片只有一层，本模组去掉了这种限制，雪片可以无限堆，堆到8层会得到雪块并可以继续往上堆。(实际上速度很慢，不用担心被雪淹没不知所措)
![](https://i.loli.net/2019/09/12/JLO1Bhyg5Nk36Xi.png)
同时，下雨天将会在河面/海面产生积水，随着时间推移积水会越来越多，小心被水淹没不知所措。
![](https://i.loli.net/2019/09/23/wZMzkvgYnNu2El7.png)

将`积雪1.5.zip`放入存档`datapacks`文件夹即可。

## 命令

+ 关闭/开启积雪功能，默认为1(开启)
```
/scoreboard players set #doSnowPack spvalue 0或1
```

+ 关闭/开启积水功能，默认为1(开启)
```
/scoreboard players set #doSeeper spvalue 0或1
```

+ 修改积雪生成速度，数值越高速度越慢，默认为4。
```
/scoreboard players set #SnowPackPeriod spvalue [数值]
```

+ 修改积水生成速度，数值越高速度越慢，默认为600。
```
/scoreboard players set #SeeperPeriod spvalue [数值]
```

+ 修改可堆叠的雪层生成速度，数值越高速度越慢，默认为4。
```
/scoreboard players set #period snowpackvalue [数值]
```

## 更新日志
`1.6 2020/04/09`
+ 现在只支持1.16版本。

`1.5 2020/03/23`
+ 精简并修复了一些问题。
+ 现在只支持1.15+版本。

`1.4 2019/10/20`
+ 不再需要前置。

`1.3 2019/10/16`
+ 现在积雪功能默认开启。

`1.2 2019/09/23`
+ 添加了积水。
+ 现在可以打开/关闭积雪和积水功能。

`1.1 2019/09/17`
+ 现在玩家不会再看见奇怪的物品闪烁一下了。

`1.0 2019/09/12`
+ 提交第一个版本。