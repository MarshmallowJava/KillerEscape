
##キラーのレジストリを生成します

data modify storage minecraft:killerescape killers set value []
data modify storage minecraft:killerescape killers append value {Name:'{"text":"影鬼","italic":false,"color":"dark_aqua"}',Lore:'{"translate":"視線方向に地面に沿って伸びる影を展開し\\n一定時間後、影の上にいるプレイヤーを%sします","with":[{"text":"3秒間拘束","italic":false,"color":"light_purple","font":"wave"}]}',Items:[{id:"minecraft:ender_eye",tag:{display:{Name:'{"text":"影鬼","italic":false,"color":"dark_aqua"}',Lore:['{"text":"右クリック長押しで指定位置に影を用いた拘束を行う","italic":false,"color":"white"}']},CustomModelData:5,CustomTag:Shadow,OwnItem:1b,HideFlags:255},Count:1b}]}
data modify storage minecraft:killerescape killers append value {Name:'{"text":"氷鬼","italic":false,"color":"aqua"}',Lore:'{"translate":"能力使用後しばらく鬼の視界にいる生存者の\\n%sします\\n%s症状は徐々に改善されます\\nレベルⅠ 移動速度低下Ⅰ\\nレベルⅡ 移動速度低下Ⅱ、ジャンプ不可\\nレベルⅢ 移動速度低下Ⅲ、ジャンプ不可","with":[{"translate":"移動能力が3段階に分かれて%s","italic":false,"color":"aqua","with":[{"translate":"低下","italic":false,"color":"aqua","font":"shake"}]},{"text":"視線を切ることで","italic":false,"color":"yellow","font":"wave"}]}',Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'{"text":"氷鬼","italic":false,"color":"aqua"}',Lore:['{"text":"視界内にいる生存者の移動能力を低下させる","italic":false,"color":"white"}']},CustomModelData:15,CustomTag:Ice,OwnItem:1b},Count:1b}]}
data modify storage minecraft:killerescape killers append value {Name:'{"text":"釣鬼","italic":false,"color":"blue"}',Lore:'{"translate":"高速に直線移動するフックを射出し、最初に的中した\\nプレイヤーは%s","with":[{"text":"鬼の元へ引き寄せられます","italic":false,"color":"yellow","font":"wave"}]}',Items:[{id:"minecraft:fishing_rod",tag:{display:{Name:'{"text":"釣鬼","italic":false,"color":"blue"}',Lore:['{"text":"右クリックで釣り針を高速射出し、生存者を引き寄る","italic":false,"color":"white"}']},CustomTag:Fishing,OwnItem:1b,Unbreakable:1b,HideFlags:255},Count:1b}]}

execute if score prerelease const matches 1 run data modify storage minecraft:killerescape killers append value {Name:'{"text":"吸血鬼","italic":false,"color":"aqua"}',Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'{"text":"吸血鬼","italic":false,"color":"red"}',Lore:['{"text":"ポイントを設置し、任意の場所からポイント地点に移動する","italic":false,"color":"white"}','{"text":"ポイントは生存者を攻撃することで1つ獲得できる","italic":false,"color":"white"}','{"text":"右クリック: ポイントを設置","italic":false,"color":"white"}','{"text":"スニーク+右クリック: ポイント地点へ移動","italic":false,"color":"white"}']},CustomTag:Vampire,OwnItem:1b,HideFlags:255},Count:1b}]}
