
##中央のゲージを生成します

#文字列結合
data modify storage minecraft:killerescape arguements set value []
execute if score length var <= now var run data modify storage minecraft:killerescape arguments append from storage minecraft:temp gauge.active
execute unless score length var <= now var run data modify storage minecraft:killerescape arguments append from storage minecraft:temp gauge.inactive
data modify storage minecraft:killerescape arguments append from storage minecraft:killerescape result
function killerescape:util/bond_text

#再帰呼び出し
scoreboard players remove length var 1
execute if score length var matches 1.. run function killerescape:util/get_gauge/___
