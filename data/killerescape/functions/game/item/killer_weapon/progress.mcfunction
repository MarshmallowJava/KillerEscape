
##サボタージュの進捗を表示します

#ゲージ作成
data modify storage minecraft:killerescape arguments set value {length:10}
execute store result storage minecraft:killerescape arguments.value int 1 run scoreboard players get @s sabotage_time
execute store result storage minecraft:killerescape arguments.max int 1 run scoreboard players get sabotagetime const
data modify storage minecraft:killerescape arguments.format set from storage minecraft:killerescape formats.killer
function killerescape:util/get_gauge/

#反映
title @s actionbar [{"text":"サボタージュ中...","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]
