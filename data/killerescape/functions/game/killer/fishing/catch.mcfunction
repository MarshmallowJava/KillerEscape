
##実行者である生存者を捕らえます

#ターゲット設定
scoreboard players operation @e[tag=fishing_anchor,tag=current] target_id = @s entity_id

#タグ付与
tag @e[tag=fishing_anchor,tag=current] add anchored

#サウンド
execute as @a[tag=current] at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1 1.5 0
