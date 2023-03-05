
##ダメージに関する処理を行います

#体力を更新
execute as @a[tag=update_health] run function killerescape:game/damage/__

#何らかの能力によって回復した場合
execute as @a[tag=survivor,tag=!damage_applied] store result score @s var run data get entity @s Health
scoreboard players set @a[tag=survivor,tag=!damage_applied,scores={var=11..,damage_stage=2}] damage_stage 1
scoreboard players set @a[tag=survivor,tag=!damage_applied,scores={var=20..,damage_stage=1}] damage_stage 0
