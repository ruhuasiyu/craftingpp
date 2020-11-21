function cli:astick3
execute store result score #temp2 clivalue run data get block ~ ~2 ~ Items
execute if score #temp2 clivalue = #temp1 clivalue run function cli:astick9
