
##ランダムプールに要素を補給します

#今までのデータは削除
data remove storage minecraft:temp temp

#補給
data modify storage minecraft:temp temp2 set from storage minecraft:killerescape killers
data modify storage minecraft:temp temp3 set from storage minecraft:killerescape ban_pool0
function killerescape:game/killer/role/supply/_

execute if score autoban const matches 1 unless data storage minecraft:temp temp[0] run function killerescape:game/killer/role/supply/__
