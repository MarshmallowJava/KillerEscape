
##救助するまでの時間を表示する

#ゲージ作成
data modify storage minecraft:killerescape arguments set value {length:10}
execute store result storage minecraft:killerescape arguments.value int 1 run scoreboard players get @s rescue_time
execute store result storage minecraft:killerescape arguments.max int 1 run scoreboard players get rescuetime const
data modify storage minecraft:killerescape arguments.format set from storage minecraft:killerescape formats.survivor
function killerescape:util/get_gauge/

#反映
title @s actionbar [{"text":"救助中...","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]
