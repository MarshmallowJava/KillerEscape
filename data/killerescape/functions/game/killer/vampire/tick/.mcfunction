
##各処理を行います

#カウント
execute store result score count var if entity @e[tag=vampire_point]

#現在の数
scoreboard players operation remain var = vampire_maxcount const
scoreboard players operation remain var -= count var

#血痕を獲得
execute if entity @e[tag=blood,distance=..2] run function killerescape:game/killer/vampire/suck

#チャージ
execute if score remain var > @s vampire_count run function killerescape:game/killer/vampire/regen
execute if score remain var > @s vampire_count if score @s vampire_accel matches 1.. run function killerescape:game/killer/vampire/regen
execute if score remain var > @s vampire_count if score @s vampire_accel matches 1.. run function killerescape:game/killer/vampire/regen
scoreboard players remove @s[scores={vampire_accel=1..}] vampire_accel 1

#条件分岐
execute if entity @s[tag=!mode_choose] run function killerescape:game/killer/vampire/tick/_
execute if entity @s[tag=mode_choose] run function killerescape:game/killer/vampire/tick/__

#モードシフト
execute store result score @s var if entity @s[tag=mode_choose]
scoreboard players add @s[tag=offhand_action] var 1
scoreboard players operation @s var %= #2 const
execute if score @s var matches 0 run tag @s remove mode_choose
execute if score @s var matches 1 run tag @s add mode_choose
