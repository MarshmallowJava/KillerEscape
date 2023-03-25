
##通信機の修理が完了していないときに呼び出されます

#紐づけされている進捗バーを検索
function killerescape:util/get_current

#サボタージュ
execute if score @s sabotage_time matches 1.. run tag @s add update_ui
execute if score @s sabotage_time matches 1.. run scoreboard players remove @s time 2
execute if score @s sabotage_time matches 1.. run scoreboard players operation @s time > #0 const
execute if score @s sabotage_time matches 1.. run scoreboard players remove @s sabotage_time 1

#修理が完了した
execute if score @s time > repairtime const run function killerescape:game/communicator/repaired

#パーティクル
particle minecraft:campfire_signal_smoke ~ ~2 ~ 0 1 0 0.1 0 force @a

#スキルチェックペナルティ
scoreboard players remove @s[scores={skillcheck_time=1..}] skillcheck_time 1
execute if score @s skillcheck_time matches 0 if entity @s[nbt={Glowing:1b}] run data modify entity @s Glowing set value 0b
execute if score @s skillcheck_time matches 1.. unless entity @s[nbt={Glowing:1b}] run data modify entity @s Glowing set value 1b
