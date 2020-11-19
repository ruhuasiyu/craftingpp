# 战利品表随机数
用于生成特定范围内的整随机数。

使用时，设定好最大最小值之后执行函数`random:random`即可，分数会存储在`#result`的`random`记分板。
```
scoreboard players set #random_min random [最小值]
scoreboard players set #random_max random [最大值]
function random:random
```

## 更新日志
`v1.2 2019/09/29`
+ 现在分数会被记录在#result的分数上而非执行者。

`v1.1 2019/08/13`
+ 修复了执行后原本记分板会发生改变的问题。

`v1.0 2019/08/11`
+ 提交第一个版本。