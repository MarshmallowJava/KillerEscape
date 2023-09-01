
##指定されたデータを持つ能力を無効化します

execute if data storage minecraft:temp temp[0].Items run data modify storage minecraft:killerescape arguments.a set from storage minecraft:temp temp[0].Items[0].tag.CustomTag
execute unless data storage minecraft:temp temp[0].Items run data modify storage minecraft:killerescape arguments.a set from storage minecraft:temp temp[0].tag.CustomTag
data modify storage minecraft:killerescape arguments.b set from storage minecraft:temp temp3
function killerescape:util/compare

execute if score result var matches 0 run data modify storage minecraft:temp temp4 append value 1
execute if score result var matches 1 run data modify storage minecraft:temp temp4 append from storage minecraft:temp temp2[0]

data remove storage minecraft:temp temp[0]
data remove storage minecraft:temp temp2[0]

execute if data storage minecraft:temp temp[0] run function killerescape:config/ban/ban/_
