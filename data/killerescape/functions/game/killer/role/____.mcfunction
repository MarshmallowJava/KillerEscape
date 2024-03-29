
##実行者にキラー用能力を１つランダムに付与します

#表示
# tellraw @a {"translate":"[システム] 能力の詳細はチャット画面からカーソルを合わせると表示されます","italic": false,"color": "yellow"}
# tellraw @a [{"translate":"[システム] 今回の鬼は「%s」です","italic": false,"color": "yellow","with":[{"storage":"minecraft:temp","nbt":"temp[-1].Name","interpret": true,"hoverEvent": {"action": "show_text","value": {"storage":"minecraft:temp","nbt":"temp[-1].Lore","interpret":true}}}]}]
# tellraw @a {"storage":"minecraft:temp","nbt":"temp[-1].Lore","interpret":true}
title @a subtitle [{"translate":"今回の鬼は %s です","italic": false,"color": "yellow","with":[{"storage":"minecraft:temp","nbt":"temp[-1].Name","interpret": true}]}]

#統計データ作成
function killerescape:statistics/report1

#自動BAN実行
execute if score autoban const matches 1 run function killerescape:game/killer/role/__

#サボタージュ性能を設定
execute store result score @s sabotage_level run data get storage minecraft:temp temp[-1].SabotageLevel

#アイテムを付与
data modify storage minecraft:killerescape arguments set from storage minecraft:temp temp[-1].Items
function killerescape:util/give_item/
