
##模倣能力を一つ実行者に付与します

#データにタグを追加
data modify storage temp: _[0].tag.Mimicry set value 1b

#アイテムを付与
data modify storage minecraft:killerescape arguments append from storage temp: _[0]
function killerescape:util/give_item/

#リスト削除
data remove storage temp: _[0]

#再帰呼び出し
execute if data storage temp: _[0] run function killerescape:game/killer/mimicry/role/_
