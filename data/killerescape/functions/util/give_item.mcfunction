
##ストレージ minecraft:killerescape arguments[0] に格納されたアイテムを実行者に付与します

#ブロックにデータを反映
data remove block 0 0 0 Items
data modify block 0 0 0 Items append from storage minecraft:killerescape arguments[0]

#アイテム付与
loot give @s mine 0 0 0 minecraft:air{DropContents:1b}

#引数削除
data remove storage minecraft:killerescape arguments
