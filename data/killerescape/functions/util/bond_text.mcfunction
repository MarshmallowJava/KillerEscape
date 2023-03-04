
##２つのjson_textを結合します
##(a::json_text, b::json_text)
##返却値 - minecraft:killerescape result

#結合
data modify block 1 0 0 Text1 set value '[{"storage":"minecraft:killerescape","nbt":"arguments[0]","interpret":true},{"storage":"minecraft:killerescape","nbt":"arguments[1]","interpret":true}]'
data modify storage minecraft:killerescape result set from block 1 0 0 Text1

data remove storage minecraft:killerescape arguments
