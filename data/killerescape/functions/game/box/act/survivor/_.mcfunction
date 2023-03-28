
##生存者がロッカーをアクションし、先客がいなかった場合に呼び出されます

#紐づけ
scoreboard players operation @s target_id = @a[tag=target] entity_id

#アニメーション開始
function killerescape:game/box/animation/open
