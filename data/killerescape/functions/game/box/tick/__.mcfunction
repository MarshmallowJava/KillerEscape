
##実行者であるキラーがロッカーを開いている間の処理を行います

#ロッカーを検索
scoreboard players operation current entity_id = @s box_id
function killerescape:util/get_current

#場所固定
execute at @e[tag=box,tag=current] run tp @s ^ ^ ^1.5 ~180 0

#生存者を担ぐ
execute if score @s box_time matches 10 if entity @e[tag=box,tag=current,scores={target_id=-2147483648..2147483647}] run function killerescape:game/box/catch

#進行
scoreboard players remove @s box_time 1
