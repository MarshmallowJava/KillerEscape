
##minecraft:killerescape arguments下のa, bのデータが等しいか検証します
##等しいならば0, 異なるなら1を返却します

#比較
data modify storage temp: _ set from storage minecraft:killerescape arguments.a
execute store result score result var run data modify storage temp: _ set from storage minecraft:killerescape arguments.b

#デバッグ表示
execute if score debugmode const matches 1 run tellraw @a {"translate":"compare '%s' and '%s' = %s","with":[{"storage":"minecraft:killerescape","nbt":"arguments.a"},{"storage":"minecraft:killerescape","nbt":"arguments.b"},{"score":{"name":"result","objective":"var"}}]}

#キャッシュ削除
data remove storage temp: _
data remove storage minecraft:killerescape arguments
