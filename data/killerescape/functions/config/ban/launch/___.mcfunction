
##更新後データを作成します

#判定
execute store result score data var run data get storage minecraft:temp temp[0]
execute if score count var = slot var run scoreboard players add data var 1
execute if score count var = slot var run tag @a add button_clicked
scoreboard players operation data var %= #2 const

#搬入
data remove storage minecraft:temp temp3
execute store result storage minecraft:temp temp3 int 1 run scoreboard players get data var
data modify storage minecraft:temp temp2 append from storage minecraft:temp temp3

#カウント
scoreboard players add count var 1

#再帰呼び出し
data remove storage minecraft:temp temp[0]
execute if data storage minecraft:temp temp[0] run function killerescape:config/ban/launch/___
