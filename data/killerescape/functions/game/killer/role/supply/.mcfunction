
##ランダムプールに要素を補給します

#自動BANモードが有効ならBANリストを初期化
execute if score autoban const matches 1 run function killerescape:config/ban/init/killer

#今までのデータは削除
data remove storage minecraft:temp temp

#補給
data modify storage minecraft:temp temp2 set from storage minecraft:killerescape killers
data modify storage minecraft:temp temp3 set from storage minecraft:killerescape ban_pool0
function killerescape:game/killer/role/supply/_

#data modify storage minecraft:killerescape pool set from storage minecraft:killerescape storage
