
##minecraft:killerescape arguments.UUIDに格納されたUUIDを持つプレイヤーを検索しtargetタグを付与します

#検索
tag @e remove target
execute as @a run function killerescape:util/search/_

#キャッシュ削除
data remove storage minecraft:killerescape arguments
