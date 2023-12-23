
##チェンジログ

#リセット
data remove storage changelog: killerescape

#v0.0.1
data modify storage changelog: killerescape.v0_0_1.title set value '{"text":"v0.0.1変更分","italic":false,"color":"white"}'
data modify storage changelog: killerescape.v0_0_1.desc set value ['{"text":"クリックで詳細を表示","italic":false,"color":"gray"}']

#板破壊について
data modify storage _ _ set value {}
data modify storage _ _.title set value '{"text":"板破壊について","italic":false,"color":"white"}'
data modify storage _ _.icon set value {id:"minecraft:oak_planks",Count:1b}
data modify storage _ _.desc set value ['{"text":"攻撃クールダウン中に板破壊ができなくなりました","italic":false,"color":"gray"}']
data modify storage changelog: killerescape.v0_0_1.contents append from storage _ _

#サボタージュについて
data modify storage _ _ set value {}
data modify storage _ _.title set value '{"text":"サボタージュについて","italic":false,"color":"white"}'
data modify storage _ _.icon set value {id:"minecraft:iron_sword",tag:{HideFlags:255},Count:1b}
data modify storage _ _.desc set value ['{"text":"攻撃クールダウン中にサボタージュができなくなりました","italic":false,"color":"gray"}','{"text":"一部の鬼についてその巡回性能により","italic":false,"color":"gray"}','{"text":"試合時間が極端に長くなる場合が多いため","italic":false,"color":"gray"}','{"text":"鬼毎にサボタージュの効果量を変更しました","italic":false,"color":"gray"}','{"text":"影鬼 - 高","italic":false,"color":"gray"}','{"text":"氷鬼 - 中","italic":false,"color":"gray"}','{"text":"釣鬼 - 高","italic":false,"color":"gray"}','{"text":"吸血鬼 - 低","italic":false,"color":"gray"}','{"text":"増鬼 - 低","italic":false,"color":"gray"}']
data modify storage changelog: killerescape.v0_0_1.contents append from storage _ _

#影鬼について
data modify storage _ _ set value {}
data modify storage _ _.title set value '{"text":"影鬼について","italic":false,"color":"white"}'
data modify storage _ _.icon set value {id:"minecraft:ender_eye",tag:{CustomModelData:5},Count:1b}
data modify storage _ _.desc set value ['{"text":"影鬼が設置した影が5秒間維持するようになりました","italic":false,"color":"gray"}','{"text":"持続中の影の上では移動速度が上昇します","italic":false,"color":"gray"}','{"text":"影の射程 50m >>> 40m","italic":false,"color":"gray"}','{"text":"影の展開時間 ~1.25s >>> ~1.00s","italic":false,"color":"gray"}']
data modify storage changelog: killerescape.v0_0_1.contents append from storage _ _

#氷鬼について
data modify storage _ _ set value {}
data modify storage _ _.title set value '{"text":"氷鬼について","italic":false,"color":"white"}'
data modify storage _ _.icon set value {id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:15},Count:1b}
data modify storage _ _.desc set value ['{"text":"スキルの影響を受けた生存者を攻撃した時","italic":false,"color":"gray"}','{"text":"冷気を回復するようになりました","italic":false,"color":"gray"}','{"text":"レベル1(1～2秒)で0.5秒分回復","italic":false,"color":"gray"}','{"text":"レベル2(2～3秒)で1.5秒分回復","italic":false,"color":"gray"}','{"text":"レベル3(3～ 秒)で3.0秒分回復","italic":false,"color":"gray"}']
data modify storage changelog: killerescape.v0_0_1.contents append from storage _ _

#釣鬼について
data modify storage _ _ set value {}
data modify storage _ _.title set value '{"text":"釣鬼について","italic":false,"color":"white"}'
data modify storage _ _.icon set value {id:"minecraft:fishing_rod",tag:{HideFlags:255},Count:1b}
data modify storage _ _.desc set value ['{"text":"スキルが的中した時","italic":false,"color":"gray"}','{"text":"クールダウンが減少するようになりました","italic":false,"color":"gray"}','{"text":"クールダウン減少値 7.5s","italic":false,"color":"gray"}','{"text":"クールダウン 10s >>> 15s","italic":false,"color":"gray"}','{"text":"パッシブクールダウン 15s","italic":false,"color":"gray"}']
data modify storage changelog: killerescape.v0_0_1.contents append from storage _ _

#吸血鬼について
data modify storage _ _ set value {}
data modify storage _ _.title set value '{"text":"吸血鬼について","italic":false,"color":"white"}'
data modify storage _ _.icon set value {id:"minecraft:redstone",tag:{},Count:1b}
data modify storage _ _.desc set value ['{"text":"以前までの性能では後半の周回性能が高すぎるため","italic":false,"color":"gray"}','{"text":"生存者は蝙蝠を除去できるようになりました","italic":false,"color":"gray"}','{"text":"生存者が蝙蝠を追い払った時、逃げた蝙蝠は発光し","italic":false,"color":"gray"}','{"text":"該当生存者は回復不可を15秒間付与されます","italic":false,"color":"gray"}']
data modify storage changelog: killerescape.v0_0_1.contents append from storage _ _

#増鬼実装
data modify storage _ _ set value {}
data modify storage _ _.title set value '{"text":"増鬼実装","italic":false,"color":"white"}'
data modify storage _ _.icon set value {id:"minecraft:ender_eye",tag:{CustomModelData:6},Count:1b}
data modify storage _ _.desc set value ['{"text":"増鬼は眷属を視点先の場所に配置し","italic":false,"color":"gray"}','{"text":"複数の場所を同時に監視することができます","italic":false,"color":"gray"}','{"text":"同時に(脱落した生存者数)+1体配置することができます","italic":false,"color":"gray"}','{"text":"眷属は正面のみを監視し生存者を発見した場合","italic":false,"color":"gray"}','{"text":"一定時間追跡した後到達すると発光付与し消滅します","italic":false,"color":"gray"}','{"text":"ただし何らかの原因で生存者を見失うと","italic":false,"color":"gray"}','{"text":"追跡を中止してしまいます","italic":false,"color":"gray"}','{"text":"また追跡中、本体は移動速度が上昇します","italic":false,"color":"gray"}']
data modify storage changelog: killerescape.v0_0_1.contents append from storage _ _

# チェスト
data modify storage _ _ set value {}
data modify storage _ _.title set value '{"text":"チェストについて","italic":false,"color":"white"}'
data modify storage _ _.icon set value {id:"minecraft:chest",tag:{},Count:1b}
data modify storage _ _.desc set value ['{"text":"新アイテム「式神」「雪玉/雪ブロック」が追加されました","italic":false,"color":"gray"}','{"text":"","italic":false,"color":"gray"}','{"text":"-式神-","italic":false,"color":"gray"}','{"text":"使用すると短い間透明効果を獲得します","italic":false,"color":"gray"}','{"text":"","italic":false,"color":"gray"}','{"text":"-雪玉-","italic":false,"color":"gray"}','{"text":"4つ集めると雪ブロックとなり","italic":false,"color":"gray"}','{"text":"雪ブロックを使用することで脱落した生存者を","italic":false,"color":"gray"}','{"text":"ランダムで1名復活させます","italic":false,"color":"gray"}']
data modify storage changelog: killerescape.v0_0_1.contents append from storage _ _

#追加
data modify storage changelog: data append from storage changelog: killerescape.v0_0_1

# テンプレート
# data modify storage _ _ set value {}
# data modify storage _ _.title set value '{"text":"","italic":false,"color":"white"}'
# data modify storage _ _.icon set value {id:"minecraft:",tag:{},Count:1b}
# data modify storage _ _.desc set value ['{"text":"","italic":false,"color":"gray"}']
# data modify storage changelog: killerescape.v0_0_1.contents append from storage _ _
