
##能力発動後の処理を行います

#待機時間
scoreboard players add @s time 1
execute if score @s time = shadow_delay const run function killerescape:game/killer/shadow/launch/__

#持続時間
execute if score @s time > shadow_remain const run kill @s[type=minecraft:marker]
