
##到着時の処理を行います

#検索
function killerescape:util/get_current

#ゲームモードを変更
gamemode adventure @a[tag=current]

#クールダウン設定
scoreboard players set @a[tag=current] cool_vampire 300

#削除
tp @s ~ ~-1000 ~
kill @s[type=minecraft:bat]
kill @e[type=minecraft:bat,tag=vampire_target]
