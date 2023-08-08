
execute store result score id var run data get storage minecraft:temp temp[-1].Id

execute if score current entity_id = id var run data modify storage temp: _ set from storage minecraft:temp temp[-1]
execute unless score current entity_id = id var run data modify storage minecraft:temp temp2 append from storage minecraft:temp temp[-1]

data remove storage minecraft:temp temp[-1]

execute if data storage minecraft:temp temp[-1] run function killerescape:statistics/search/_
