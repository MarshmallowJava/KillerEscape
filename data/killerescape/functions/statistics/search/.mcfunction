
scoreboard players operation current entity_id = @s entity_id

data remove storage minecraft:temp temp
data remove storage minecraft:temp temp2

data modify storage minecraft:temp temp set from storage minecraft:killerescape statistics.cache.survivors
data modify storage minecraft:temp temp2 set value []

execute if data storage minecraft:temp temp[-1] run function killerescape:statistics/search/_
data modify storage minecraft:killerescape statistics.cache.survivors set from storage minecraft:temp temp2
