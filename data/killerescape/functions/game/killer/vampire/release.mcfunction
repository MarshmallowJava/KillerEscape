
##到着時の処理を行います

#検索
function killerescape:util/get_current

#ゲームモードを変更
gamemode adventure @a[tag=current]

#クールダウン設定a
scoreboard players operation @a[tag=current] cool_vampire = vampire_cool const

#演出
particle minecraft:dust 0 0 0 3 ~ ~1 ~ 0.4 0.5 0.4 1 50 force @a

#削除
tp @s ~ ~-1000 ~
tp @e[type=minecraft:bat,tag=vampire_target] ~ ~-1000 ~
kill @s[type=minecraft:bat]
kill @e[type=minecraft:bat,tag=vampire_target]
