##メイン処理
#repair_timeの設定
scoreboard players add @a[scores={repair_flag=1..}] repair_time 1
scoreboard players set @a[scores={repair_flag=0}] repair_time 0

#修理中で近くに修理中のプレイヤーがいる場合に発動
execute as @a[scores={repair_time=1..}] if data entity @s {Inventory:[{tag:{CustomTag:"ability_coop_repair"}}]} at @s if entity @a[distance=0.1..5,scores={repair_time=1..}] run function killerescape:game/ability/coop_repair/launch
#一人デバッグ用
#execute as @a[scores={repair_time=1..}] if data entity @s {Inventory:[{tag:{CustomTag:"ability_coop_repair"}}]} at @s run function killerescape:game/ability/coop_repair/launch

#repair_flagを0に設定
scoreboard players set @a repair_flag 0