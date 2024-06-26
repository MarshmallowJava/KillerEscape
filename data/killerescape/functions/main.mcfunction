
##ゲーム内のtick毎の全ての処理を呼び出します

#キャッシュ作成
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run setblock 0 0 0 shulker_box replace
execute in minecraft:overworld run setblock 1 0 0 oak_sign replace

#スコアボード処理
function killerescape:scores

#ゲーム状態を初期化
execute unless score game_status time matches -2147483648..2147483647 run scoreboard players set game_status time 0

#デモ処理
execute if score game_status time matches -1 run function killerescape:demo/main

#ロビー処理
execute if score game_status time matches 0 run function killerescape:lobby/main

#ゲーム処理
execute if score game_status time matches 1 run function killerescape:game/main

#リザルト処理
execute if score game_status time matches 2 run function killerescape:result/main

#雑談フェーズ処理
execute if score game_status time matches 666 run function killerescape:donothing/main

#マップ制作処理
function killerescape:map/main

#デバッグ用処理
execute if score debugmode const matches 1 run function killerescape:debug/main

#設定処理
function killerescape:config/main

#常時バフ
effect give @a minecraft:resistance infinite 10 true

#所持しているアイテムの説明文の一行目を表示
execute as @a[tag=display_ui,gamemode=!spectator] run title @s actionbar {"entity":"@s","nbt":"SelectedItem.tag.display.Lore[0]","interpret": true}
tag @a add display_ui

#特殊タグ付きのアイテムはアイテムを落とせない
execute as @e[type=minecraft:item,nbt={Item:{tag:{OwnItem:1b}}}] run data modify entity @s PickupDelay set value 0
