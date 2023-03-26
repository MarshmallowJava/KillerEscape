
##拘束された生存者ごとの処理を行います

#検索
function killerescape:util/get_current

#位置固定
execute positioned as @e[tag=chain,tag=current] run tp @s ~ ~ ~ ~ ~

#効果
effect give @s minecraft:slowness 1 255 false
effect give @s minecraft:jump_boost 1 129 false
effect give @s minecraft:levitation 1 255 true

#エフェクト
particle minecraft:dust_color_transition 0.5 0 0.5 1.5 0 0 0 ~ ~ ~ 0.3 0 0.3 1 10 force @a

#残り時間減少
scoreboard players remove @s shadow_time 1

#鎖の継続
execute if score @s shadow_time matches 1.. run tag @e[tag=chain,tag=current] add still_alive
