
##ゲーム内のtick毎の全ての処理を呼び出します

#キャッシュ作成
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run setblock 0 0 0 shulker_box replace
execute in minecraft:overworld run setblock 1 0 0 oak_sign replace

#エンティティIDを割り振り
execute as @e unless score @s entity_id matches -2147483648..2147483647 run function killerescape:util/allocate_id

#スコアボード処理
function killerescape:scores

#ゲーム状態を初期化
execute unless score game_status time matches -2147483648..2147483647 run scoreboard players set game_status time 0

#ロビー処理
execute if score game_status time matches 0 run function killerescape:lobby/main

#ゲーム処理
execute if score game_status time matches 1 run function killerescape:game/main

#ゲーム処理
execute if score game_status time matches 2 run function killerescape:result/main

#マップ制作処理
function killerescape:map/main

#デバッグ用処理
execute if score debugmode const matches 1 run function killerescape:debug/main

#常時バフ
effect give @a minecraft:resistance 2 10 true

#所持しているアイテムの説明文の一行目を表示
execute as @a[tag=display_ui] run title @s actionbar {"entity":"@s","nbt":"SelectedItem.tag.display.Lore[0]","interpret": true}
tag @a add display_ui
