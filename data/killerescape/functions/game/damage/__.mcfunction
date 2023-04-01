
##現在の負傷状態をもとに体力に適用します

#体力適用
execute if score @s damage_stage matches 0 run attribute @s minecraft:generic.max_health base set 4
execute if score @s damage_stage matches 1 run attribute @s minecraft:generic.max_health base set 2
execute if score @s damage_stage matches 2 run attribute @s minecraft:generic.max_health base set 1
effect give @s minecraft:instant_health 1 10 true

#1tick後に体力をもとに戻す
schedule function killerescape:game/damage/___ 2t append
tag @s add damage_applied

#タグ削除
tag @s remove update_health
