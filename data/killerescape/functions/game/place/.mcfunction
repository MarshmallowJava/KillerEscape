
##パップ固有オブジェクトを再配置します

#マップ固有エンティティにタグ付け
function killerescape:util/get_mapentities

#修復進捗度をリセット
scoreboard players set @e[tag=communicator] time 0
tag @e[tag=communicator] remove repairable
tag @e[tag=communicator] remove can_sabotage

#修復進捗バーを削除
kill @e[type=minecraft:area_effect_cloud,tag=repair_progress]

#通信機の修復進捗バーを作成
tag @e[tag=current_map,tag=communicator,limit=5,sort=random] add repairable
function killerescape:game/communicator/create_progressbar/

#チェスト削除
execute at @e[tag=chest] run data modify block ~ ~ ~ LootTable set value "minecraft:empty"
execute at @e[tag=chest] run setblock ~ ~ ~ minecraft:air replace
tag @e[tag=chest] remove placed

#チェストを設置
execute store result score count var if entity @e[tag=current_map,tag=chest]
scoreboard players operation count var /= #2 const
function killerescape:game/place/_

#ゲート再設置
execute at @e[tag=gate] run fill ^-1 ^ ^ ^1 ^2 ^ minecraft:sand replace
execute at @e[tag=gate] run setblock ^3 ^ ^1 minecraft:beacon replace
execute at @e[tag=gate] run setblock ^-3 ^ ^1 minecraft:beacon replace
tag @e[tag=gate] remove opened

#板をリセット
execute at @e[tag=board] run fill ^ ^ ^ ^ ^ ^1 minecraft:air replace minecraft:barrier
execute as @e[tag=board] run data modify entity @s ArmorItems[3] set value {id:"minecraft:end_portal_frame",tag:{CustomModelData:2,CustomTag:Board},Count:1b}
tag @e[tag=board] remove downed
tag @e[tag=board] remove broken
