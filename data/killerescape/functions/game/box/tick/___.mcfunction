
##実行者であるキラーがロッカーを開いている間の処理を行います

#ロッカーを検索
scoreboard players operation current entity_id = @s box_id
function killerescape:util/get_current

#移動禁止
effect give @s minecraft:slowness infinite 255 true
effect give @s minecraft:jump_boost infinite 129 true

#アニメーション
execute if score @s box_time matches 14.. at @e[tag=box,tag=current] run tp @s ^ ^ ^1.5 ~180 0
execute if score @s box_time matches 13 at @e[tag=box,tag=current] run tp @s ^ ^ ^1.2 ~180 0
execute if score @s box_time matches 12 at @e[tag=box,tag=current] run tp @s ^ ^ ^0.9 ~150 0
execute if score @s box_time matches 11 at @e[tag=box,tag=current] run tp @s ^ ^ ^0.6 ~120 0
execute if score @s box_time matches 10 at @e[tag=box,tag=current] run tp @s ^ ^ ^0.3 ~90 0
execute if score @s box_time matches 9 at @e[tag=box,tag=current] run tp @s ^ ^ ^ ~60 0
execute if score @s box_time matches 8 at @e[tag=box,tag=current] run tp @s ^ ^ ^ ~30 0
execute if score @s box_time matches ..7 at @e[tag=box,tag=current] run tp @s ^ ^ ^ ~ 0

#紐づけ
execute if score @s box_time matches 1 run scoreboard players operation @e[tag=box,tag=current] target_id = @s entity_id

#進行
scoreboard players remove @s box_time 1
