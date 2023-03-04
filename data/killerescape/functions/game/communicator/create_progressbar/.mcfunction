
##現在設定中のマップに配置された通信機の修復進捗バーを作成します

#今回修理できる通信機に対して進捗バーを作成
execute as @e[tag=communicator,tag=current_map,tag=repairable] at @s run function killerescape:game/communicator/create_progressbar/_

#ついでにモデルも反映
execute as @e[tag=communicator,tag=current_map] run data modify entity @s ArmorItems set value [{},{},{},{}]
execute as @e[tag=communicator,tag=current_map,tag=repairable] run data modify entity @s ArmorItems set value [{},{},{},{id:"minecraft:end_portal_frame",tag:{CustomModelData:1},Count:1b}]
