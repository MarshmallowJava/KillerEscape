
##各処理を行います

#カウント
execute store result score count var if entity @e[tag=vampire_point]

#現在の数
scoreboard players operation remain var = vampire_maxcount const
scoreboard players operation remain var -= count var

#血痕を獲得
execute unless score @s vampire_accel matches 1.. if entity @e[tag=blood,distance=..2] run function killerescape:game/killer/vampire/suck

#チャージ
execute if score remain var > @s vampire_count run function killerescape:game/killer/vampire/regen
execute if score remain var > @s vampire_count if score @s vampire_accel matches 1.. run function killerescape:game/killer/vampire/regen
execute if score remain var > @s vampire_count if score @s vampire_accel matches 1.. run function killerescape:game/killer/vampire/regen
scoreboard players remove @s[scores={vampire_accel=1..}] vampire_accel 1

#条件分岐
execute if entity @s[nbt={SelectedItem:{tag:{CustomTag:Vampire}}}] run function killerescape:game/killer/vampire/tick/_

#演出
execute if score @s vampire_accel matches 1.. run particle minecraft:crimson_spore ~ ~1 ~ 0.7 0.7 0.7 1 10 force @a
execute if entity @s[tag=mode_choose] run particle minecraft:dust_color_transition 0.5 0 0 1 0.5 0 0.5 ~ ~1 ~ 0.5 0.6 0.5 1 10 force @a[tag=!killer]
