
##キラーがロッカーを開く時に呼び出されます

#アニメーション開始
function killerescape:game/box/animation/open

#ロッカー時間設定
scoreboard players set @a[tag=target] box_time 20
scoreboard players operation @a[tag=target] box_id = @s entity_id
