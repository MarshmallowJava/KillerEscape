
##通信機に関する処理を行います

#通信機毎の処理
execute as @e[tag=communicator,tag=current_map,tag=repairable] at @s run function killerescape:game/communicator/tick/
