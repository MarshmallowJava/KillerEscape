
##ランダムプールに要素を補給します

#今までのデータは削除
data remove storage minecraft:temp temp

#補給
data modify storage minecraft:temp temp2 set from storage minecraft:killerescape killers
data modify storage minecraft:temp temp3 set from storage minecraft:killerescape ban_pool0
function killerescape:game/killer/role/supply/_

#data modify storage minecraft:killerescape pool set from storage minecraft:killerescape storage
