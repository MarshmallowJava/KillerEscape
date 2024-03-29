
#プレイヤー毎の処理を行います

#修理
execute anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 as @e[tag=communicator,tag=current_map,tag=repairable,tag=!repaired,scores={skillcheck_time=0},distance=..1] at @s run function killerescape:game/communicator/repairing

#表示
function killerescape:util/owner
execute store success score @s var anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 if entity @e[tag=communicator,tag=current_map,tag=repairable,tag=!repaired,scores={skillcheck_time=0},distance=..1]

execute if score @s var matches 0 run title @s actionbar {"text":"視点を故障している通信機に向けてください","italic": false,"color": "red"}
execute if score @s var matches 1 anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 at @e[tag=communicator,tag=current_map,tag=repairable,tag=!repaired,distance=..1] positioned ~ ~0.5 ~ as @e[tag=repair_progress,limit=1,sort=nearest] run title @a[tag=owner] actionbar ["修理中...",{"entity":"@s","nbt":"CustomName","interpret":true}]
execute if score @s var matches 1 run scoreboard players add @s data_repair 1
execute if score @s var matches 1 run scoreboard players set bound value 100
execute if score @s var matches 1 run function random:next
execute if score @s var matches 1 if score result value matches 0 unless score @s skillcheck_time matches -2147483648..2147483647 run scoreboard players set @s skillcheck_time 0

#通常UIは表示しない
tag @s remove display_ui

#イベントトリガー
execute if score @s var matches 1 run function killerescape:event/on_repairing
