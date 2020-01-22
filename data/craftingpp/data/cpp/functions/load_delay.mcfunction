tellraw @a [{"translate":"info.cpp.load1"},{"translate":"info.cpp.load2","clickEvent":{"action":"open_url","value":"http://home.ustc.edu.cn/~zsxqq/craftingpp"}},{"translate":"info.cpp.load3"},"§r1.10, ",{"translate":"info.cpp.load4"}]
execute if score $skyislandMode cppConfig matches 1 run tellraw @a {"translate":"info.cpp.skyisland"}
execute if score $skyislandMode cppConfig matches 1 run forceload add 0 0
execute if score $skyislandMode cppConfig matches 1 run fill -3 62 -3 3 62 3 bedrock
execute if score $skyislandMode cppConfig matches 1 run setworldspawn 0 65 0
execute if score $skyislandMode cppConfig matches 1 run forceload remove 0 0
