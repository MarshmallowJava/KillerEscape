
##ランダムプールに要素を補給します

#今までのデータは削除
data remove storage minecraft:killerescape pool

#補給
data modify storage minecraft:temp temp set from storage minecraft:killerescape storage
data modify storage minecraft:temp temp2 set from storage minecraft:killerescape ban_pool1
function killerescape:game/ability/role/supply/_
