
##フックに吊るまでの時間を表示する

#ゲージ作成
data modify storage minecraft:killerescape arguments set value {length:10}
execute store result storage minecraft:killerescape arguments.value int 1 run scoreboard players get @s hook_time
execute store result storage minecraft:killerescape arguments.max int 1 run scoreboard players get hooktime const
data modify storage minecraft:killerescape arguments.format set from storage minecraft:killerescape formats.killer
function killerescape:util/get_gauge/

#反映
title @s actionbar [{"text":"フックに吊る...","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]
