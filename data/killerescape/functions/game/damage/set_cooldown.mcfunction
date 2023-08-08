
##キラーの攻撃クールダウンを設定します

#クールダウン設定
scoreboard players operation @s cool_attack = attacktime const

#統計
scoreboard players add @s data_attack 1

#移動速度低下を付与
effect give @s minecraft:slowness 2 1 true

#実績を取り消し
advancement revoke @s only killerescape:hurt_survivor2

#イベントトリガー
function killerescape:event/on_attack
