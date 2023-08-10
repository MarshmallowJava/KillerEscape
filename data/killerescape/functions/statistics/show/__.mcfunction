
#表示
execute if data storage minecraft:temp temp[-1].survivors[-1] run tellraw @s {"translate":"プレイヤー%s - 能力:%s, 修理:%s, 救助:%s, 逃走:%s","with":[{"storage":"minecraft:temp","nbt":"temp[-1].survivors[-1].Id"},{"storage":"minecraft:temp","nbt":"temp[-1].survivors[-1].ability","interpret":true},{"storage":"minecraft:temp","nbt":"temp[-1].survivors[-1].repair"},{"storage":"minecraft:temp","nbt":"temp[-1].survivors[-1].rescue"},{"storage":"minecraft:temp","nbt":"temp[-1].survivors[-1].chase"}]}
execute unless data storage minecraft:temp temp[-1].survivors[-1] run tellraw @s [{"translate":"ERROR - INFONOTFOUNDEXCEPTION(SURVIVOR","color": "red"},{"score":{"name":"@s","objective": "var"}},")"]

#削除
data remove storage minecraft:temp temp[-1].survivors[-1]

#再帰呼び出し
scoreboard players add @s var 1
execute if score @s var matches ..3 run function killerescape:statistics/show/__
