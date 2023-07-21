
#カウント
execute store result score count var if entity @e[tag=vampire_point]

#現在の数
scoreboard players operation remain var = vampire_maxcount const
scoreboard players operation remain var -= count var

#チャージ
execute if score remain var > @s vampire_count run scoreboard players add @s vampire_count 1
