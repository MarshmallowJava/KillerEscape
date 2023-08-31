
##アビリティのアイテムのレジストリを生成します

data modify storage minecraft:killerescape storage set value []

#アクティブスキル
data modify storage minecraft:killerescape storage append value {id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {CustomTag: "ability_dash", CustomModelData: 100, OwnItem:1b, Damage: 0, display: {Lore: ['{"text":"1秒間移動速度が上昇する","italic":false,"color":"white"}', '{"text":"アクティブ", "color":"dark_green", "italic":false}'], Name: '{"text":"疾走","italic":false,"color":"yellow"}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {CustomTag: "ability_engineer", CustomModelData: 101, OwnItem:1b, Damage: 0, display: {Lore: ['{"text":"使用後に通信機を修理時、5秒間修理速度上昇", "color":"white", "italic":false}', '{"text":"アクティブ", "color":"dark_green", "italic":false}'], Name: '{"text":"技巧", "color":"yellow", "italic":false}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {CustomTag: "ability_limit", CustomModelData: 102, OwnItem:1b, Damage: 0, display: {Lore: ['{"text":"HP減少時に使用可 5秒間の移動速度2倍と無敵を得る", "color":"white", "italic":false}', '{"text":"アクティブ", "color":"dark_green", "italic":false}'], Name: '{"text":"極限", "color":"yellow", "italic":false}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {CustomTag: "ability_flashtrap", CustomModelData: 106, OwnItem:1b, Damage: 0, display: {Lore: ['{"text":"通信機への妨害行為に反応する罠を設置する", "color":"white", "italic":false}', '{"text":"発動すると使用者に通知、周囲の鬼にスタン効果を与える", "color":"white", "italic":false}', '{"text":"アクティブ", "color":"dark_green", "italic":false}'], Name: '{"text":"ショックトラップ", "color":"yellow", "italic":false}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:clock", Count: 1b, tag: {CustomTag: "ability_smoke", CustomModelData: 108, OwnItem:1b, display: {Lore: ['{"text":"一定時間毎に煙幕を張る事のできるアイテムを獲得する","italic":false,"color":"white"}', '{"text":"煙幕の中ではあらゆる探知機能が無効化される","italic":false,"color":"white"}', '{"text":"同時保有数は1個","italic":false,"color":"white"}', '{"text":"アクティブ","italic":false,"color":"dark_green"}'], Name: '{"text":"煙幕","italic":false,"color":"aqua"}'}}}

#パッシブスキル
data modify storage minecraft:killerescape storage append value {id: "minecraft:clock", Count: 1b, tag: {CustomTag: "ability_hope", CustomModelData: 100, OwnItem:1b, display: {Lore: ['{"text":"通信機を5個修理すると移動速度が2倍になる", "color":"white", "italic":false}', '{"text":"パッシブ", "color":"blue", "italic":false}'], Name: '{"text":"希望", "color":"aqua", "italic":false}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:clock", Count: 1b, tag: {CustomTag: "ability_incubation", CustomModelData: 101, OwnItem:1b, display: {Lore: ['[{"text":"4秒間", "color":"white", "italic":false},{"keybind":"key.sneak", "underlined":true},{"text":"を押すと、透明化状態になる", "underlined":false}]', '{"text":"パッシブ", "color":"blue", "italic":false}'], Name: '{"text":"潜伏", "color":"aqua", "italic":false}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:clock", Count: 1b, tag: {CustomTag: "ability_coop_repair", CustomModelData: 102, OwnItem:1b, display: {Lore: ['{"text":"通信機修理時近くに修理中の味方がいる場合修理速度上昇","italic":false,"color":"white"}', '{"text":"パッシブ", "color":"blue", "italic":false}'], Name: '{"text":"共同修理", "color":"aqua", "italic":false}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:clock", Count: 1b, tag: {CustomTag: "ability_close_call", CustomModelData: 103, OwnItem:1b, display: {Lore: ['{"text":"フックから救助すると両者に5秒間無敵を付与する","italic":false,"color":"white"}', '{"text":"パッシブ","italic":false,"color":"blue"}'], Name: '{"text":"危機一髪","italic":false,"color":"aqua"}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:clock", Count: 1b, tag: {CustomTag: "ability_work_hard", CustomModelData: 104, OwnItem:1b, display: {Lore: ['{"text":"医療キットの使用効率が上昇する","italic":false,"color":"white"}', '{"text":"パッシブ","italic":false,"color":"blue"}'], Name: '{"text":"懸命","italic":false,"color":"aqua"}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:clock", Count: 1b, tag: {CustomTag: "ability_alert", CustomModelData: 105, OwnItem:1b, display: {Lore: ['{"text":"フックから救助した時、鬼が一定時間ハイライトされる","italic":false,"color":"white"}', '{"text":"パッシブ","italic":false,"color":"blue"}'], Name: '{"text":"警戒","italic":false,"color":"aqua"}'}}}
data modify storage minecraft:killerescape storage append value {id: "minecraft:clock", Count: 1b, tag: {CustomTag: "ability_silent", CustomModelData: 107, OwnItem:1b, display: {Lore: ['{"text":"負傷状態でも出血しないようになる","italic":false,"color":"white"}', '{"text":"パッシブ","italic":false,"color":"blue"}'], Name: '{"text":"忍足","italic":false,"color":"aqua"}'}}}

#UNUSED
# data modify storage minecraft:killerescape storage append value {id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2,CustomTag:area_heal,display:{Name:'{"text":"エリアヒール","italic":false,"color":"yellow"}',Lore:['{"text":"範囲内に再生を付与するトーチを生成する","italic":false,"color":"white"}','{"text":"半径3m以内のプレイヤーに3秒間の再生","italic":false,"color":"white"}']}},Count:1b}
