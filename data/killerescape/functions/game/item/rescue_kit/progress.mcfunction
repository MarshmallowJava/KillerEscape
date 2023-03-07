
##治療の進捗を表示します

#ゲージ作成
data modify storage minecraft:killerescape arguments set value {length:10}
execute store result storage minecraft:killerescape arguments.value int 1 run scoreboard players get @a[tag=target,limit=1] rescuekit_time
execute store result storage minecraft:killerescape arguments.max int 1 run scoreboard players get rescuekittime const
data modify storage minecraft:killerescape arguments.format set from storage minecraft:killerescape formats.survivor
function killerescape:util/get_gauge/

#反映
execute if entity @s[tag=target] run title @s actionbar [{"text":"自分","italic": false,"color": "aqua"},{"text":" を治療中...","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]
execute if entity @s[tag=!target] run title @s actionbar [{"selector":"@a[tag=target]","italic": false,"color": "aqua"},{"text":" を治療中...","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]
