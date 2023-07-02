
##拘束された生存者ごとの処理を行います

#検索
function killerescape:util/get_current

#位置固定
execute positioned as @e[tag=chain,tag=current] run tp @s ~ ~ ~ ~ ~

#効果
execute if score @s shadow_time matches 2.. run effect give @s minecraft:slowness 1 255 false
execute if score @s shadow_time matches 2.. run effect give @s minecraft:jump_boost 1 129 false
execute if score @s shadow_time matches 2.. if entity @e[tag=chain,tag=current,tag=inair] run effect give @s minecraft:levitation 1 255 true
execute if score @s shadow_time matches 1 run effect clear @s minecraft:slowness
execute if score @s shadow_time matches 1 run effect clear @s minecraft:jump_boost
execute if score @s shadow_time matches 1 run effect clear @s minecraft:levitation

#エフェクト
particle minecraft:dust_color_transition 0.5 0 0.5 1.5 0 0 0 ~ ~ ~ 0.3 0 0.3 1 10 force @a

#残り時間減少
scoreboard players remove @s shadow_time 1

#表示
scoreboard players operation sec var = @s shadow_time
scoreboard players operation sec var /= #20 const
scoreboard players add sec var 1
title @s actionbar {"translate":"拘束解除まで %s秒","italic": false,"color": "white","with":[{"score":{"name":"sec","objective": "var"}}]}
tag @s remove display_ui

#鎖の継続
execute if score @s shadow_time matches 1.. run tag @e[tag=chain,tag=current] add still_alive

#シェーダーエフェクト
execute if entity @s[scores={shaderEffects=1,shadow_time=1..}] at @s run particle minecraft:dust 0 100000000 100000000 0 ~ ~ ~ 0 0 0 0 0 force @a
