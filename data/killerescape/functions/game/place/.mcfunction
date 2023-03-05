
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
