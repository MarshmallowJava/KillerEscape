
##浮きが特殊な釣り竿によるものであるかどうか検証します

#生成
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["fishing_anchor","init"]}

#角度調整
execute as @e[tag=fishing_anchor,tag=init] at @s rotated as @a[limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~

#同期
scoreboard players operation @s entity_id = @a[limit=1,sort=nearest] entity_id
scoreboard players operation @e[tag=fishing_anchor,tag=init] entity_id = @s entity_id

#乗車
ride @s mount @e[tag=fishing_anchor,tag=init,limit=1]

#初期化完了
tag @e[tag=fishing_anchor,tag=init] remove init
tag @s add fishing_anchor_bobber

#クールダウン設定
scoreboard players set @a[limit=1,sort=nearest] cool_fishing 200
