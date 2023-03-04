
##ロビー用アーマースタンドをマーカーに置き換えます
##実行者はアーマースタンドに限定されます

#前回のマーカーを削除する
kill @e[type=minecraft:marker,tag=lobby]

#マーカー生成
summon minecraft:marker ~ ~ ~ {Tags:["lobby"]}

#実行者を削除
kill @s[type=minecraft:armor_stand]
