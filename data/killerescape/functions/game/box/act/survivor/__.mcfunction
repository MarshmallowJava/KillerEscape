
##生存者がロッカーをアクションし、先客がいた場合に呼び出されます

#現在ロッカーの中にいる人を検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#ロッカー脱出
execute unless entity @a[tag=current,tag=target] as @a[tag=target] at @s run function killerescape:game/box/act/survivor/____
execute if entity @a[tag=current,tag=target] run function killerescape:game/box/act/survivor/___
