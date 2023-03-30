
##実行者に助言します

#プールを設定
data modify storage minecraft:temp temp set from storage minecraft:killerescape tips
execute store result score bound value run data get storage minecraft:temp temp

#ランダムに抽出
function random:next
execute if score result value matches 1.. run function killerescape:lobby/tip/_

#表示
tellraw @s {"translate":"[TIP] %s","italic": false,"color": "white","with":[{"storage":"minecraft:temp","nbt":"temp[-1]","interpret":true}]}
