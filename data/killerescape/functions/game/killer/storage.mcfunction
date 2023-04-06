
##キラーのレジストリを生成します

data modify storage minecraft:killerescape killers set value []
data modify storage minecraft:killerescape killers append value {Name:'{"text":"影鬼","italic":false,"color":"dark_aqua"}',Items:[{id:"minecraft:ender_eye",tag:{display:{Name:'{"text":"影鬼","italic":false,"color":"dark_aqua"}',Lore:['{"text":"右クリック長押しで指定位置に影を用いた拘束を行う","italic":false,"color":"white"}']},CustomModelData:5,CustomTag:Shadow,OwnItem:1b,HideFlags:255},Count:1b}]}
data modify storage minecraft:killerescape killers append value {Name:'{"text":"氷鬼","italic":false,"color":"aqua"}',Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'{"text":"氷鬼","italic":false,"color":"aqua"}',Lore:['{"text":"10秒間視界内にいる生存者の移動能力を低下させる","italic":false,"color":"white"}']},CustomModelData:15,CustomTag:Ice,OwnItem:1b},Count:1b}]}
data modify storage minecraft:killerescape killers append value {Name:'{"text":"釣鬼","italic":false,"color":"aqua"}',Items:[{id:"minecraft:fishing_rod",tag:{display:{Name:'{"text":"釣鬼","italic":false,"color":"aqua"}',Lore:['{"text":"右クリックで釣り針を高速射出し、生存者を引き寄る","italic":false,"color":"white"}']},CustomTag:Fishing,OwnItem:1b,Unbreakable:1b,HideFlags:255},Count:1b}]}

execute if score prerelease const matches 1 run data modify storage minecraft:killerescape killers append value {Name:'{"text":"吸血鬼","italic":false,"color":"aqua"}',Items:[{id:"minecraft:warped_fungus_on_a_stick",tag:{display:{Name:'{"text":"吸血鬼","italic":false,"color":"red"}',Lore:['{"text":"ポイントを設置し、任意の場所からポイント地点に移動する","italic":false,"color":"white"}','{"text":"ポイントは生存者を攻撃することで1つ獲得できる","italic":false,"color":"white"}','{"text":"右クリック: ポイントを設置","italic":false,"color":"white"}','{"text":"スニーク+右クリック: ポイント地点へ移動","italic":false,"color":"white"}']},CustomTag:Vampire,OwnItem:1b,HideFlags:255},Count:1b}]}
