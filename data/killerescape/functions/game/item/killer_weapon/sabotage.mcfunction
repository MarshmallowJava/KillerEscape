
##実行者である通信機をサボタージュします

#現在の33%減少させる
scoreboard players operation @s sabotage_time = @s time
scoreboard players operation @s sabotage_time /= #3 const

#次に修理されるまでサボタージュは不可能に
tag @s remove can_sabotage

#演出
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 5 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1 0
