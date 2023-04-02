
##count[var]分の空データを用意します

#データ追加
data modify storage minecraft:temp temp append value 0

#再帰呼び出し
scoreboard players remove count var 1
execute if score count var matches 1.. run function killerescape:config/ban/init/_
