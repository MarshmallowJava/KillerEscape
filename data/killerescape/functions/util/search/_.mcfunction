
##minecraft:killerescape arguments.UUIDに格納されたUUIDを持つプレイヤーを検索しtargetタグを付与します

#nbtの上書きを試行
data modify storage minecraft:temp temp set from storage minecraft:killerescape arguments.UUID
execute store result score @s var run data modify storage minecraft:temp temp set from entity @s UUID

#判定
execute if score @s var matches 0 run tag @s add target
