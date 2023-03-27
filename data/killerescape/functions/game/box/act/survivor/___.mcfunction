
##生存者がロッカーを出る時に呼び出されます

#アニメーション開始
function killerescape:game/box/animation/open

#移動
execute positioned ^ ^ ^1 run tp @a[tag=target] ~ ~ ~ ~ ~
effect clear @a[tag=target] minecraft:slowness
effect clear @a[tag=target] minecraft:jump_boost

#紐づけ解除
scoreboard players reset @s target_id
