
##ストレージ minecraft:killerescape arguments に格納されたアイテムを実行者に付与します

#ブロックにデータを反映
data remove block 0 0 0 Items
scoreboard players set slot var 0
execute if data storage minecraft:killerescape arguments[0] run function killerescape:util/give_item/_

#アイテム付与
loot give @s mine 0 0 0 minecraft:air{DropContents:1b}

#引数削除
data remove storage minecraft:killerescape arguments
