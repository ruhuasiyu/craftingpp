execute as @s[scores={cppKey=1}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}
execute as @s[scores={cppKey=2}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}
execute as @s[scores={cppKey=3}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}
execute as @s[scores={cppKey=4}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}
execute as @s[scores={cppKey=5}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}
execute as @s[scores={cppKey=6}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}
execute as @s[scores={cppKey=7}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}
execute as @s[scores={cppKey=8}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}
execute as @s[scores={cppKey=9}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}
execute as @s[scores={cppKey=10}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}
execute as @s[scores={cppKey=11}] run summon item ~ ~ ~ {Tags:["cpp_temp"],Item:{id:"minecraft:firework_star",Count:1b,tag:{text:"",CustomModelData:12971000}}}

title @s[scores={cppMana=0..4}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue010"}]
title @s[scores={cppMana=5..14}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue011"}]
title @s[scores={cppMana=15..24}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue012"}]
title @s[scores={cppMana=25..34}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue013"}]
title @s[scores={cppMana=35..44}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue014"}]
title @s[scores={cppMana=45..54}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue015"}]
title @s[scores={cppMana=55..64}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue016"}]
title @s[scores={cppMana=65..74}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue017"}]
title @s[scores={cppMana=75..84}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue018"}]
title @s[scores={cppMana=85..94}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue019"}]
title @s[scores={cppMana=95..}] actionbar [{"nbt":"Item.tag.text","entity":"@e[type=item,distance=..1,tag=cpp_temp,limit=1]"},{"text":" \ue01a"}]

kill @e[type=item,tag=cpp_temp,distance=..1]
