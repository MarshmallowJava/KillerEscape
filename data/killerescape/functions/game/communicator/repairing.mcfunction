
##実行者である通信機を修理します

#エフェクトを出すタイミングを算出
scoreboard players operation @s var = @s time
scoreboard players operation @s var %= #20 const

#修理進捗
scoreboard players add @s time 1
tag @s add can_sabotage
tag @s add update_ui

#演出
execute if score @s var matches 0 run particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 10 force @a
execute if score @s var matches 0 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 2 0
