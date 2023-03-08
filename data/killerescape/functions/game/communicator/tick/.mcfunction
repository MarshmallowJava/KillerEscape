
##各通信機ごとの処理を行います

#修理中
execute if entity @s[tag=!repaired] run function killerescape:game/communicator/tick/_

#UI更新
execute if entity @s[tag=update_ui] run function killerescape:game/communicator/tick/__
tag @s remove update_ui
