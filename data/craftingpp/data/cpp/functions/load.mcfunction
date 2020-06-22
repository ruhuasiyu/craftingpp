scoreboard objectives add cppValue dummy
gamerule commandBlockOutput false
execute unless score #inited cppValue matches 1 run function cpp:init/init
function cpp:tick20
function cpp:tick50
function cpp:tick200
function cpp:tick600
schedule function cpp:load_delay 10t
