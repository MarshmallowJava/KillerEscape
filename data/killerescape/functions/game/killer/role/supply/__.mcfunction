
##ランダムプールに要素を補給します

#リストをリセット
function killerescape:config/ban/init/killer

#補給
data remove storage minecraft:temp temp
data modify storage minecraft:temp temp2 set from storage minecraft:killerescape killers
data modify storage minecraft:temp temp3 set from storage minecraft:killerescape ban_pool0
function killerescape:game/killer/role/supply/_
