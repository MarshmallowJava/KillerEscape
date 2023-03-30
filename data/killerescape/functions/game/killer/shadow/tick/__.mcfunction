
##能力発動後の処理を行います

#待機時間
scoreboard players add @s time 1
execute if score @s time matches 20.. run function killerescape:game/killer/shadow/launch/__
execute if score @s time matches 20.. run kill @s[type=minecraft:marker]
