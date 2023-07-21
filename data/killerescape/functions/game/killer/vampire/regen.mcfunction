
##吸血鬼のチャージ処理を行います

#チャージ
scoreboard players add @s vampire_time 1
scoreboard players operation @s vampire_time %= vampire_regentime const

#ストックを獲得
execute if score @s vampire_time matches 0 run scoreboard players add @s vampire_count 1
