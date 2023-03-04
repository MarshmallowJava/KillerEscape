
##引数をブロックデータに移します

#データを作成
data modify storage minecraft:temp temp set from storage minecraft:killerescape arguments[0]
execute store result storage minecraft:temp temp.Slot byte 1 run scoreboard players get slot var

#データを移送
data modify block 0 0 0 Items append from storage minecraft:temp temp

#スロットID加算
scoreboard players add slot var 1

#再帰呼び出し
data remove storage minecraft:killerescape arguments[0]
execute if data storage minecraft:killerescape arguments[0] run function killerescape:util/give_item/_
