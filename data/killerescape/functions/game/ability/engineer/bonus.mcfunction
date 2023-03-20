#20tickごとにボーナスに10加算
scoreboard players operation @s temporary = @s engineer_time
scoreboard players operation @s temporary %= #20 const
execute if score @s temporary matches 1 run scoreboard players operation @s repair_bonus += engineer_bonus const
scoreboard players reset @s temporary