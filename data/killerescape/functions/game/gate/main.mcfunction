
##ゲートに関する処理を行います

#各ゲート毎に処理
execute as @e[tag=gate,tag=current_map,tag=!opened] at @s run function killerescape:game/gate/tick
