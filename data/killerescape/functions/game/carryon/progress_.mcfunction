
##フックに吊るまでの時間を表示する

#ゲージ作成
data modify storage minecraft:killerescape arguments set value {length:10}
execute store result storage minecraft:killerescape arguments.value int 1 run scoreboard players get @e[tag=carryon,tag=current,limit=1] time
execute store result storage minecraft:killerescape arguments.max int 1 run scoreboard players get carryon_release const
data modify storage minecraft:killerescape arguments.format set from storage minecraft:killerescape formats.killer
function killerescape:util/get_gauge/

#反映
title @s actionbar [{"text":"スニーク長押しで生存者を下ろす 担ぎ状態強制解除まで","italic": false,"color": "white"},{"storage":"minecraft:killerescape","nbt":"result","interpret": true}]

#通常UIは表示しない
tag @s remove display_ui
