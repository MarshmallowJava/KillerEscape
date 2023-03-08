
##通信機の修理が完了していないときに呼び出されます

#紐づけされている進捗バーを検索
function killerescape:util/get_current

#エフェクトを出すタイミングを算出
scoreboard players operation @s var = @s time
scoreboard players operation @s var %= #20 const

#修理進捗
execute if entity @s[tag=repairing] run scoreboard players add @s time 1
execute if entity @s[tag=repairing] run tag @s add can_sabotage
execute if entity @s[tag=repairing] run tag @s add update_ui
execute if entity @s[tag=repairing] if score @s var matches 0 run particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 10 force @a
execute if entity @s[tag=repairing] if score @s var matches 0 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 2 0
tag @s remove repairing

#サボタージュ
execute if score @s sabotage_time matches 1.. run tag @s add update_ui
execute if score @s sabotage_time matches 1.. run scoreboard players remove @s time 2
execute if score @s sabotage_time matches 1.. run scoreboard players operation @s time > #0 const
execute if score @s sabotage_time matches 1.. run scoreboard players remove @s sabotage_time 1

#修理が完了した
execute if score @s time > repairtime const run function killerescape:game/communicator/repaired

#パーティクル
particle minecraft:campfire_signal_smoke ~ ~2 ~ 0 1 0 0.1 0 force @a
