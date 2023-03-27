
##各通信機ごとの処理を行います

#修理中
execute if entity @s[tag=!repaired] run function killerescape:game/communicator/tick/_

#UI更新
execute if entity @s[tag=update_ui] run function killerescape:game/communicator/tick/__
tag @s remove update_ui

#発光削除
execute if entity @s[tag=repaired,nbt={Glowing:1b}] run data modify entity @s Glowing set value 0b

#演出
execute if entity @s[tag=repaired] run particle minecraft:happy_villager ~ ~0.5 ~ 0.4 0.4 0.4 0 1 force @a
