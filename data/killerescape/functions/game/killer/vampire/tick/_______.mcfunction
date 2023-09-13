
##逃走中のポイントの処理を行います

#移動
tp @s ^ ^ ^0.5 ~ ~

#演出
particle minecraft:dust 0 0 0 1 ~ ~0.5 ~ 0.15 0.15 0.15 1 10 force @a
particle minecraft:ash ~ ~0.5 ~ 0.15 0.15 0.15 1 10 force @a

#時間経過
scoreboard players add @s time 1

#削除
execute if score @s time matches 30.. run function killerescape:game/killer/vampire/vanish
