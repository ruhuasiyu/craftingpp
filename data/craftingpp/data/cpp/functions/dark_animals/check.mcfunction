execute if predicate cpp:dark_animal run tag @s add cpp_dark_animal
data merge entity @s[tag=cpp_dark_animal,type=chicken] {DeathLootTable:"cpp:dark_animals/chicken"}
data merge entity @s[tag=cpp_dark_animal,type=sheep] {DeathLootTable:"cpp:dark_animals/sheep",Color:15b}
data merge entity @s[tag=cpp_dark_animal,type=cow] {DeathLootTable:"cpp:dark_animals/cow"}
data merge entity @s[tag=cpp_dark_animal,type=mooshroom] {DeathLootTable:"cpp:dark_animals/mooshroom"}
data merge entity @s[tag=cpp_dark_animal,type=pig] {DeathLootTable:"cpp:dark_animals/pig"}
data merge entity @s[tag=cpp_dark_animal,type=rabbit] {DeathLootTable:"cpp:dark_animals/rabbit",RabbitType:99}
tag @s[tag=cpp_dark_animal,type=rabbit] remove cpp_dark_animal
tag @s add cpp_dark_animal_checked
