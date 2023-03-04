
##ゲージのデータを新しく生成します

#ゲージ作成
data modify storage minecraft:killerescape result set from storage minecraft:temp gauge.right
execute if score length var matches 1.. run function killerescape:util/get_gauge/___

#文字列結合
data modify storage minecraft:killerescape arguements set value []
data modify storage minecraft:killerescape arguments append from storage minecraft:temp gauge.left
data modify storage minecraft:killerescape arguments append from storage minecraft:killerescape result
function killerescape:util/bond_text

#キャッシュに登録
data modify storage minecraft:temp temp set value {}
data modify storage minecraft:temp temp.tag set from storage minecraft:temp tag
data modify storage minecraft:temp temp.text set from storage minecraft:killerescape result
data modify storage minecraft:killerescape cache.gauge append from storage minecraft:temp temp
