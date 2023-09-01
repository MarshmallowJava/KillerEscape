
##指定されたデータを持つ能力を無効化します
##引数 - (db::array, list:array, data::string)
##返却値 result::array

data modify storage minecraft:temp temp set from storage minecraft:killerescape arguments.db
data modify storage minecraft:temp temp2 set from storage minecraft:killerescape arguments.list
data modify storage minecraft:temp temp3 set from storage minecraft:killerescape arguments.data
data modify storage minecraft:temp temp4 set value []
data remove storage minecraft:killerescape arguments

execute if data storage minecraft:temp temp[0] run function killerescape:config/ban/ban/_

data modify storage minecraft:killerescape result set from storage minecraft:temp temp4
data remove storage minecraft:temp temp
data remove storage minecraft:temp temp2
data remove storage minecraft:temp temp3
data remove storage minecraft:temp temp4
