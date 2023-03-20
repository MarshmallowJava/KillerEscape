#20tickごとにボーナスに10加算
scoreboard players operation @s temporary = @s engineer_time
scoreboard players operation @s temporary %= #20 const
execute if score @s temporary matches 1 run scoreboard players add @s repair_bonus 10
scoreboard players reset @s temporary