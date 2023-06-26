
#効果範囲を取得
execute store result score @s var run data get entity @s Rotation[0]
scoreboard players operation from var = @s var
scoreboard players operation from var -= #70 const
scoreboard players operation to var = @s var
scoreboard players operation to var += #70 const

#検索対象を特定
tag @a[tag=survivor,gamemode=!spectator,distance=..20] add watched_by_ice
execute as @a[tag=watched_by_ice] run function killerescape:game/killer/ice/check

#直線上にブロックが無いか検証
execute at @a[tag=watched_by_ice] positioned ~ ~1.5 ~ run function killerescape:game/killer/ice/trace/

#残り時間減少
scoreboard players remove @s ice_time 1

#クールダウン設定
execute if score @s ice_time matches ..0 run function killerescape:game/killer/ice/stop
execute if entity @s[nbt={SelectedItem:{tag:{CustomTag:Ice}}},scores={useItem=1}] run function killerescape:game/killer/ice/stop

#演出
particle minecraft:snowflake ~ ~1 ~ 0.3 0.3 0.3 0 3 force @a

#表示
function killerescape:game/killer/ice/progress
title @s[tag=display_ui] actionbar {"translate":"能力アイテム右クリックで中断する (残り冷気 %s)","with":[{"storage":"minecraft:killerescape","nbt":"result","interpret":true}]}
tag @s remove display_ui
