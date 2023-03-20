
##アビリティのアイテムのレジストリを生成します

data modify storage minecraft:killerescape storage set value []
data modify storage minecraft:killerescape storage append value {id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {CustomTag: "ability_dash", CustomModelData: 100, Damage: 0, display: {Lore: ['{"text":"1秒間移動速度が上昇する","italic":false,"color":"white"}', '{"text":"アクティブ", "color":"dark_green", "italic":false}'], Name: '{"text":"疾走","italic":false,"color":"yellow"}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {CustomTag: "ability_engineer", CustomModelData: 101, Damage: 0, display: {Lore: ['{"text":"使用後に通信機を修理時、5秒間修理速度上昇", "color":"white", "italic":false}', '{"text":"アクティブ", "color":"dark_green", "italic":false}'], Name: '{"text":"エンジニア", "color":"yellow", "italic":false}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:clock", Count: 1b, tag: {CustomTag: "ability_hope", CustomModelData: 100, display: {Lore: ['{"text":"発電機を5個修理すると移動速度が2倍になる", "color":"white", "italic":false}', '{"text":"パッシブ", "color":"blue", "italic":false}'], Name: '{"text":"希望", "color":"aqua", "italic":false}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:clock", Count: 1b, tag: {CustomTag: "ability_incubation", CustomModelData: 101, display: {Lore: ['[{"text":"3秒間", "color":"white", "italic":false},{"keybind":"key.sneak", "underlined":true},{"text":"を押すと、透明化状態になる", "underlined":false}]', '{"text":"パッシブ", "color":"blue", "italic":false}'], Name: '{"text":"潜伏", "color":"aqua", "italic":false}'}}}

#UNUSED
# data modify storage minecraft:killerescape storage append value {id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2,CustomTag:area_heal,display:{Name:'{"text":"エリアヒール","italic":false,"color":"yellow"}',Lore:['{"text":"範囲内に再生を付与するトーチを生成する","italic":false,"color":"white"}','{"text":"半径3m以内のプレイヤーに3秒間の再生","italic":false,"color":"white"}']}},Count:1b}
