scoreboard players add @s cppTorchTick 1
execute if score @s cppTorchTick >= @s cppTorchPeriod run function cpp:auto_torch/check1
