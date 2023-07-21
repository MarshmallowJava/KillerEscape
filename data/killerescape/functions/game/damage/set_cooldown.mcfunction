
##キラーの攻撃クールダウンを設定します

#クールダウン設定
scoreboard players operation @s cool_attack = attacktime const

#移動速度低下を付与
effect give @s minecraft:slowness 2 1 true

advancement revoke @s only killerescape:hurt_survivor2

function killerescape:event/on_attack
