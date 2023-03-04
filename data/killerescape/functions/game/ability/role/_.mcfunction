
##プールから目的の要素を取り出し、抜き去ったあとのデータを作成します

data modify storage minecraft:temp temp2 set from storage minecraft:killerescape pool[-1]

execute if score @s var = result value run data modify storage minecraft:temp result set from storage minecraft:temp temp2
execute unless score @s var = result value run data modify storage minecraft:temp temp append from storage minecraft:temp temp2

scoreboard players add @s var 1
data remove storage minecraft:killerescape pool[-1]

execute if data storage minecraft:killerescape pool[-1] run function killerescape:game/ability/role/_
