
##板に関する処理を行います

#生存者毎に処理します
execute as @a[tag=survivor,tag=display_ui] at @s if entity @e[tag=board,tag=!downed,distance=..1.5] run function killerescape:game/board/tick
