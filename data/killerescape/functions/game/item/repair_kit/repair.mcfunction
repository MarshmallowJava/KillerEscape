
#プレイヤー毎の処理を行います

#修理
execute anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 as @e[tag=communicator,tag=current_map,tag=repairable,tag=!repaired,distance=..1] at @s run function killerescape:game/communicator/repairing

#イベントトリガー
function killerescape:event/on_repairing

#表示
function killerescape:util/owner
execute anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 at @e[tag=communicator,tag=current_map,tag=repairable,tag=!repaired,distance=..1] positioned ~ ~0.5 ~ as @e[tag=repair_progress,limit=1,sort=nearest] run title @a[tag=owner] actionbar ["修理中...",{"entity":"@s","nbt":"CustomName","interpret":true}]

#通常UIは表示しない
tag @s remove display_ui
