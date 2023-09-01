
##自動BANを行います

#データを退避
data modify storage minecraft:temp buff set from storage minecraft:temp temp

#排除
data modify storage minecraft:killerescape arguments.db set from storage minecraft:killerescape killers
data modify storage minecraft:killerescape arguments.list set from storage minecraft:killerescape ban_pool0
data modify storage minecraft:killerescape arguments.data set from storage minecraft:temp temp[-1].Items[0].tag.CustomTag
function killerescape:config/ban/ban/

#データをコピー
data modify storage minecraft:killerescape ban_pool0 set from storage minecraft:killerescape result

#データを元に戻す
data modify storage minecraft:temp temp set from storage minecraft:temp buff
