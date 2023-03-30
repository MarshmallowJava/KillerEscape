
##実行者にダメージを与えます

scoreboard players add @s damage_stage 1
scoreboard players operation @s damage_stage < #2 const

#1回目は加速する
execute if score @s damage_stage matches 1 run effect give @s minecraft:speed 2 3 true

#2回殴られたのでダウン
execute if score @s damage_stage matches 2 run tag @s add lying

#体力更新
tag @s add update_health

#演出
particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0 0 0 0 100 force @a[scores={enableBlood=1}]

