tag @s[tag=cpp_golem_break] add cpp_golem_switch
tag @s[tag=cpp_golem_break] add cpp_golem_use
tag @s[tag=cpp_golem_break] remove cpp_golem_break
tag @s[tag=!cpp_golem_switch] remove cpp_golem_use
tag @s[tag=!cpp_golem_switch] add cpp_golem_break
tag @s[tag=cpp_golem_switch] remove cpp_golem_switch

data modify storage cpp:temp2 Item set from entity @s HandItems[1].tag.switch
data modify entity @s HandItems[1].tag.switch set from entity @s HandItems[0]
data modify entity @s HandItems[0] set from storage cpp:temp2 Item
