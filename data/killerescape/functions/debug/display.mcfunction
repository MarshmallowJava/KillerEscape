
##デバッグ情報を表示します

#初期値設定
data modify storage minecraft:temp temp.status set value '{"text":"ERROR","italic":false,"color":"red"}'

#ゲームステータス
execute if score game_status time matches -1 run data modify storage minecraft:temp temp.status set value '{"text":"デモ","italic":false}'
execute if score game_status time matches 0 run data modify storage minecraft:temp temp.status set value '{"text":"ロビー","italic":false}'
execute if score game_status time matches 1 run data modify storage minecraft:temp temp.status set value '{"text":"プレイ中","italic":false}'
execute if score game_status time matches 2 run data modify storage minecraft:temp temp.status set value '{"text":"結果表示","italic":false}'

#表示
title @a actionbar {"translate":"ゲーム状態:%s 編集中のマップ:%s 選択中のマップ:%s","with":[{"storage":"minecraft:temp","nbt":"temp.status","interpret":true},{"score":{"name":"editing","objective":"mapid"}},{"score":{"name":"selected","objective":"mapid"}}]}

#キャッシュ削除
data remove storage minecraft:temp temp
