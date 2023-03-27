
##各ロッカーの処理を行います

#検索
function killerescape:util/get_current

#アクション
execute if score @s time matches 0 if data entity @e[tag=box_collision,tag=current,limit=1] interaction run function killerescape:game/box/act/

#検索
function killerescape:util/get_current

#操作許可
execute if score @s time matches 20 run data modify entity @e[tag=box_collision,tag=current,limit=1] response set value 0b
execute if score @s time matches 1 run data modify entity @e[tag=box_collision,tag=current,limit=1] response set value 1b
scoreboard players remove @s[scores={time=1..}] time 1

#検知データ削除
data remove entity @e[tag=box_collision,tag=current,limit=1] interaction

#生存者が格納されている場合の処理
execute if score @s target_id matches -2147483648..2147483647 run function killerescape:game/box/tick/_
