
##能力ごとの処理を行います

#範囲表示
particle minecraft:dust_color_transition 0.5 0 0.5 1.5 0 0 0 ~ ~ ~ 1.2 0 1.2 1 20 force @a

#待機時間
scoreboard players add @s time 1
execute if score @s time matches 20.. run function killerescape:game/killer/shadow/launch/__
execute if score @s time matches 20.. run kill @s[type=minecraft:marker]
