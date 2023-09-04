
##模倣能力を一つ実行者に付与します

#BANリストを一時保存
data modify storage temp: _ set from storage minecraft:killerescape ban_pool0

#BANリストを初期化
function killerescape:config/ban/init/killer

#補給
data remove storage minecraft:temp temp
data modify storage minecraft:temp temp2 set from storage minecraft:killerescape killers
data modify storage minecraft:temp temp3 set from storage minecraft:killerescape ban_pool0
function killerescape:game/killer/role/supply/_

#データからMimicryを削除
data remove storage minecraft:temp temp[{Items:[{tag:{CustomTag:Mimicry}}]}]

#BANリストを復帰
data modify storage minecraft:killerescape ban_pool0 set from storage temp: _

#乱数を振る
execute store result score bound value run data get storage minecraft:temp temp
function random:next

#目的の要素までリストを削る
execute if score bound value matches 1.. if score result value matches 1.. run function killerescape:game/killer/role/_

#表示
tellraw @s {"translate":"[システム] %s の能力を模倣しました","color": "yellow","with":[{"storage":"minecraft:temp","nbt":"temp[-1].Name","interpret":true}]}

#データを移動
data modify storage temp: _ set from storage minecraft:temp temp[-1].Items

#アイテムを付与
execute if data storage temp: _[0] run function killerescape:game/killer/mimicry/role/_
