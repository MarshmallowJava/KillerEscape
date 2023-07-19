
##マークされた生存者の処理を行います

#時間経過
scoreboard players remove @s curse_time 1

#脅威
execute if score @s curse_time matches 1.. run tag @s add threat
execute if score @s curse_time matches 0 run tag @s remove threat
