
##キラーのレジストリを生成します

data modify storage minecraft:killerescape killers set value []
data modify storage minecraft:killerescape killers append value {Name:'{"text":"影鬼","italic":false,"color":"dark_aqua"}',Items:[{id:"minecraft:ender_eye",tag:{display:{Name:'{"text":"影鬼","italic":false,"color":"dark_aqua"}',Lore:['{"text":"右クリック長押しで指定位置に影を用いた拘束を行う","italic":false,"color":"white"}']},CustomModelData:5,CustomTag:Shadow,OwnItem:1b,HideFlags:255},Count:1b}]}
data modify storage minecraft:killerescape killers append value {Name:'{"text":"氷鬼","italic":false,"color":"aqua"}',Items:[{id:"minecraft:blue_ice",tag:{display:{Name:'{"text":"氷鬼","italic":false,"color":"aqua"}',Lore:['{"text":"視界内にいる生存者を徐々に凍らせ移動能力を低下させる","italic":false,"color":"white"}']},CustomTag:Ice,OwnItem:1b},Count:1b}]}
data modify storage minecraft:killerescape killers append value {Name:'{"text":"釣鬼","italic":false,"color":"aqua"}',Items:[{id:"minecraft:fishing_rod",tag:{display:{Name:'{"text":"釣鬼","italic":false,"color":"aqua"}',Lore:['{"text":"釣り針を高速射出し、生存者を引き寄る","italic":false,"color":"white"}']},CustomTag:Fishing,OwnItem:1b,Unbreakable:1b,HideFlags:255},Count:1b}]}
