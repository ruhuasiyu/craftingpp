execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] if predicate cpp:offhand/golem_check run function cpp:golem/put/off
execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] if predicate cpp:mainhand/golem_check run function cpp:golem/put/main
