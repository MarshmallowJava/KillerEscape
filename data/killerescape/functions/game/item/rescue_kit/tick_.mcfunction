
##治療時の処理を行います

#進捗
#自己治療かつ自身がダウン状態の場合、治療は完了しない
execute if entity @s[tag=target] run scoreboard players add @a[tag=target] rescuekit_time 2
execute if entity @s[tag=!target] run scoreboard players add @a[tag=target] rescuekit_time 3
execute if entity @s[tag=target,tag=lying] if score @s rescuekit_time > rescuekittime const run scoreboard players operation @s rescuekit_time = rescuekittime const

#進捗バー
execute unless entity @s[tag=target,tag=lying] run function killerescape:game/item/rescue_kit/progress
execute if entity @s[tag=target,tag=lying] unless score @s rescuekit_time = rescuekittime const run function killerescape:game/item/rescue_kit/progress
execute if entity @s[tag=target,tag=lying] if score @s rescuekit_time = rescuekittime const run title @s actionbar {"text":"ダウン状態での治療を完了するには他プレイヤーの治療が必要です","italic": false,"color": "red"}

#イベントトリガー
function killerescape:event/on_using_rescuekit

#タグ付与
execute if entity @s[tag=target] run tag @s add selfcare
execute if entity @s[tag=!target] run tag @a[tag=target] add cared

#治療完了
execute if score @a[tag=target,limit=1] rescuekit_time > rescuekittime const run function killerescape:game/item/rescue_kit/rescue
execute if score @a[tag=target,limit=1] rescuekit_time > rescuekittime const run scoreboard players set @a[tag=target] rescuekit_time 0
