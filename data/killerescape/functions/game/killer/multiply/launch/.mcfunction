
##能力発動中の処理を行います

#チャージ
scoreboard players add @s multiply_time 1

#進捗を表示
function killerescape:game/killer/multiply/progress

#一定量で発動
execute if score @s multiply_time > multiply_time const run function killerescape:game/killer/multiply/launch/_
execute if score @s multiply_time > multiply_time const run scoreboard players set @s multiply_time 0

#演出
execute if score @s multiply_time matches 1 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.75 0
execute if score @s multiply_time matches 1.. run particle minecraft:witch ~ ~1 ~ 0.6 0.7 0.6 0 10 force @a
