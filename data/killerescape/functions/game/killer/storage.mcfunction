
##キラーのレジストリを生成します

data modify storage minecraft:killerescape killers set value []
data modify storage minecraft:killerescape killers append value {SabotageLevel:2,Name:'{"text":"影鬼","italic":false,"color":"dark_aqua"}',Lore:'{"translate":"視線方向に地面に沿って伸びる影を展開し\\n一定時間後、影の上にいるプレイヤーを%sします","with":[{"text":"3秒間拘束","italic":false,"color":"light_purple","font":"wave"}]}',Items:[{id:"minecraft:ender_eye",tag:{display:{Name:'{"text":"影鬼","italic":false,"color":"dark_aqua"}',Lore:['{"text":"右クリック長押しで影を伸ばし拘束を行う","italic":false,"color":"white"}']},CustomModelData:5,CustomTag:Shadow,OwnItem:1b,HideFlags:255},Count:1b}]}
data modify storage minecraft:killerescape killers append value {SabotageLevel:1,Name:'{"text":"氷鬼","italic":false,"color":"aqua"}',Lore:'{"translate":"固有ストック(冷気)を消費している間、氷鬼の視界にいる\\n生存者の%sします\\n%s症状は徐々に改善されます\\nレベルⅠ 移動速度低下Ⅰ\\nレベルⅡ 移動速度低下Ⅱ、ジャンプ不可\\nレベルⅢ 移動速度低下Ⅲ、ジャンプ不可","with":[{"translate":"移動能力が3段階に分かれて%s","italic":false,"color":"aqua","with":[{"translate":"低下","italic":false,"color":"aqua","font":"shake"}]},{"text":"視線を切ることで","italic":false,"color":"yellow","font":"wave"}]}',Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'{"text":"氷鬼","italic":false,"color":"aqua"}',Lore:['{"text":"右クリックで視界内の生存者の移動能力を低下させる","italic":false,"color":"white"}']},CustomModelData:15,CustomTag:Ice,OwnItem:1b},Count:1b}]}
data modify storage minecraft:killerescape killers append value {SabotageLevel:2,Name:'{"text":"釣鬼","italic":false,"color":"blue"}',Lore:'{"translate":"高速に直線移動するフックを射出し、最初に的中した\\nプレイヤーは%s","with":[{"text":"鬼の元へ引き寄せられます","italic":false,"color":"yellow","font":"wave"}]}',Items:[{id:"minecraft:fishing_rod",tag:{display:{Name:'{"text":"釣鬼","italic":false,"color":"blue"}',Lore:['{"text":"右クリックで釣り針を高速射出し、生存者を引き寄せる","italic":false,"color":"white"}']},CustomTag:Fishing,OwnItem:1b,Unbreakable:1b,HideFlags:255},Count:1b}]}
data modify storage minecraft:killerescape killers append value {SabotageLevel:0,Name:'{"text":"吸血鬼","italic":false,"color":"aqua"}',Lore:'{"translate":"蝙蝠を設置し任意の場所から移動できます\\n移動後の攻撃に当たると「回復不可」を付与されます\\n「回復不可」中その生存者を%s","with":[{"text":"治療できません","color":"light_purple","font":"shake"}]}',Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'{"text":"吸血鬼","italic":false,"color":"red"}',Lore:['{"text":"設置した蝙蝠の場所へ障害物を無視して移動する","italic":false,"color":"white"}','{"text":"移動後に攻撃を当てると「回復不可」を付与できる","italic":false,"color":"white"}']},CustomModelData:16,CustomTag:Vampire,OwnItem:1b,HideFlags:255},Count:1b}]}

execute if score prerelease const matches 1 run data modify storage minecraft:killerescape killers append value {SabotageLevel:0,Name:'{"text":"増鬼","italic":false,"color":"yellow"}',Items:[{id:"minecraft:ender_eye",tag:{display:{Name:'{"text":"増鬼","italic":false,"color":"yellow"}',Lore:['{"text":"右クリック長押しで生存者を追跡する眷属を生成する","italic":false,"color":"white"}','{"text":"眷属が追跡している間、本体の移動速度が上昇する","italic":false,"color":"white"}','{"text":"同時に最大(脱落した生存者数+1)体存在できる","italic":false,"color":"white"}']},CustomTag:Multiply,CustomModelData:6,OwnItem:1b,HideFlags:255},Count:1b}]}
execute if score prerelease const matches 1 run data modify storage minecraft:killerescape killers append value {SabotageLevel:0,Name:'{"text":"謎鬼","italic":false,"color":"aqua"}',Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'{"text":"謎鬼","italic":false,"color":"green"}',Lore:['{"text":"他の鬼の能力1つをランダムに一つ獲得する","italic":false,"color":"white"}']},CustomTag:Mimicry,OwnItem:1b,HideFlags:255},Count:1b}]}

#没
# execute if score prerelease const matches 1 run data modify storage minecraft:killerescape killers append value {Name:'{"text":"線鬼","italic":false,"color":"aqua"}',Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'{"text":"線鬼","italic":false,"color":"green"}',Lore:['{"text":"発動地点２箇所を結ぶ「警戒線」を最大5本設置できる","italic":false,"color":"white"}','{"text":"「警戒線」は上を通った生存者に以下の効果を付与し消滅する","italic":false,"color":"white"}','{"text":"・20秒間のハイライト","italic":false,"color":"white"}','{"text":"・10秒間のジャンプ不可","italic":false,"color":"white"}','{"text":"・5秒間の鈍足エフェクト","italic":false,"color":"white"}']},CustomTag:Line,OwnItem:1b,HideFlags:255},Count:1b}]}
# execute if score prerelease const matches 1 run data modify storage minecraft:killerescape killers append value {Name:'{"text":"増え鬼","italic":false,"color":"aqua"}',Items:[{id:"minecraft:ender_eye",tag:{display:{Name:'{"text":"増え鬼","italic":false,"color":"yellow"}',Lore:['{"text":"最付近の生存者を追尾するエネルギー体を生成する","italic":false,"color":"white"}','{"text":"エネルギー体に近づく生存者は緊張状態となる","italic":false,"color":"white"}','{"text":"鬼自身はエネルギー体を見ることができず","italic":false,"color":"white"}','{"text":"消滅したエネルギー体が通過した痕跡を見ることができる","italic":false,"color":"white"}','{"text":"エネルギー体に触れた生存者に「呪い」を10秒間付与する","italic":false,"color":"white"}','{"text":"「呪い」効果中、生存者は脅威源として扱われる","italic":false,"color":"white"}']},CustomTag:Decoy,OwnItem:1b,HideFlags:255},Count:1b}]}
