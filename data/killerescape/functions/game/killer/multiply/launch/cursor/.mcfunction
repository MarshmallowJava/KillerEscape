

##

#検索
function killerescape:util/get_current

#生成
execute unless entity @e[tag=multiply_cursor,tag=current] run summon minecraft:marker ~ ~ ~ {Tags:["multiply_cursor", "current"]}
scoreboard players operation @e[tag=multiply_cursor,tag=current] entity_id = @s entity_id

#続行
execute if score @s useItem matches 0 run function killerescape:game/killer/multiply/launch/cursor/___
