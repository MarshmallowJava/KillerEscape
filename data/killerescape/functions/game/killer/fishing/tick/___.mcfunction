
##生存者を引っ掛けたあとの処理を行います

#移動
execute facing entity @a[tag=current] eyes run tp @s ^ ^ ^0.1 ~ ~

#削除
execute at @s positioned ~ ~-1 ~ if entity @a[tag=current,distance=..1] run function killerescape:game/killer/fishing/remove

#ターゲットを検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#捉える
ride @a[tag=current,limit=1] mount @s

#表示
tag @a[tag=current] remove display_ui
title @a[tag=current] actionbar "引き寄せられています"

#再検索
function killerescape:util/get_current
