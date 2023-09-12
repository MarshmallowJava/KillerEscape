
##実行者である通信機をサボタージュします

#現在の33%減少させる
scoreboard players operation @s sabotage_time = @s time
execute if score level var matches 0 run scoreboard players operation @s sabotage_time /= #6 const
execute if score level var matches 1 run scoreboard players operation @s sabotage_time /= #4 const
execute if score level var matches 2 run scoreboard players operation @s sabotage_time /= #3 const
scoreboard players operation @s sabotage_time /= #2 const

#次に修理されるまでサボタージュは不可能に
tag @s remove can_sabotage

#演出
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 5 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1 0
