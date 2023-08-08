
##実行者にキラー用能力を１つランダムに付与します

#プールを生成
function killerescape:game/killer/role/supply/

#乱数を振る
execute store result score bound value run data get storage minecraft:temp temp
function random:next

#目的の要素までリストを削る
execute if score result value matches 1.. run function killerescape:game/killer/role/_

#表示
tellraw @a {"translate":"[システム] 能力の詳細はチャット画面からカーソルを合わせると表示されます","italic": false,"color": "yellow"}
tellraw @a [{"translate":"[システム] 今回の鬼は「%s」です","italic": false,"color": "yellow","with":[{"storage":"minecraft:temp","nbt":"temp[-1].Name","interpret": true,"hoverEvent": {"action": "show_text","value": {"storage":"minecraft:temp","nbt":"temp[-1].Lore","interpret":true}}}]}]
title @a subtitle [{"translate":"今回の鬼は %s です","italic": false,"color": "yellow","with":[{"storage":"minecraft:temp","nbt":"temp[-1].Name","interpret": true}]}]

#統計データ作成
function killerescape:statistics/report1

#アイテムを付与
data modify storage minecraft:killerescape arguments set from storage minecraft:temp temp[-1].Items
function killerescape:util/give_item/
