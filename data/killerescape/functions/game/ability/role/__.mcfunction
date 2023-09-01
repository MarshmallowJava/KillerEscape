
##自動BANを行います

#排除
data modify storage minecraft:killerescape arguments.db set from storage minecraft:killerescape storage
data modify storage minecraft:killerescape arguments.list set from storage minecraft:killerescape ban_pool1
data modify storage minecraft:killerescape arguments.data set from storage minecraft:temp result.tag.CustomTag
function killerescape:config/ban/ban/

#データをコピー
data modify storage minecraft:killerescape ban_pool1 set from storage minecraft:killerescape result
