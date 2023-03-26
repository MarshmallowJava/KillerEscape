
##実行者にキラー用能力を１つランダムに付与します

#プールを生成
data modify storage minecraft:temp temp set from storage minecraft:killerescape killers

#乱数を振る
execute store result score bound value run data get storage minecraft:temp temp
function random:next

#目的の要素までリストを削る
execute if score result value matches 1.. run function killerescape:game/killer/role/_

#表示
tellraw @a [{"translate":"[システム] 今回のキラーは「%s」です","italic": false,"color": "yellow","with":[{"storage":"minecraft:temp","nbt":"temp[-1].Name","interpret": true}]}]

#アイテムを付与
data modify storage minecraft:killerescape arguments set from storage minecraft:temp temp[-1].Items
function killerescape:util/give_item/
