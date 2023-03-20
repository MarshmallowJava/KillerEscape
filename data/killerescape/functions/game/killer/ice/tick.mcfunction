
#効果範囲を取得
execute store result score @s var run data get entity @s Rotation[0]
scoreboard players operation from var = @s var
scoreboard players operation from var -= #70 const
scoreboard players operation to var = @s var
scoreboard players operation to var += #70 const

#タグ削除
tag @a remove watched_by_ice

#検索対象を特定
tag @a[tag=survivor,distance=..20] add watched_by_ice
execute as @a[tag=watched_by_ice] run function killerescape:game/killer/ice/check

#直線上にブロックが無いか検証
execute at @a[tag=watched_by_ice] positioned ~ ~1.5 ~ run function killerescape:game/killer/ice/trace/
