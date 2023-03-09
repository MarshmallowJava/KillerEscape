
##被治療の進捗を表示します

#ゲージ作成
data modify storage minecraft:killerescape arguments set value {length:10}
execute store result storage minecraft:killerescape arguments.value int 1 run scoreboard players get @s rescuekit_time
execute store result storage minecraft:killerescape arguments.max int 1 run scoreboard players get rescuekittime const
data modify storage minecraft:killerescape arguments.format set from storage minecraft:killerescape formats.survivor
function killerescape:util/get_gauge/

#反映
title @s actionbar [{"text":"治療を受けています...","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]

#通常UIは表示しない
tag @s remove display_ui
