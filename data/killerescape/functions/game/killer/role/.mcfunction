
##実行者にキラー用能力を１つランダムに付与します

#プールを生成
function killerescape:game/killer/role/supply/

#乱数を振る
execute store result score bound value run data get storage minecraft:temp temp
function random:next

#目的の要素までリストを削る
execute if score bound value matches 1.. if score result value matches 1.. run function killerescape:game/killer/role/_

#データが存在すれば続行
execute unless data storage minecraft:temp temp[-1] run function killerescape:game/killer/role/___
execute if data storage minecraft:temp temp[-1] run function killerescape:game/killer/role/____
