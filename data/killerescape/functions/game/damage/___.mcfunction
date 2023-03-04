
##ダメージ処理を行ったプレイヤー最大体力を20に戻します

execute as @a[tag=damage_applied] run attribute @s minecraft:generic.max_health base set 20
tag @a remove damage_applied
