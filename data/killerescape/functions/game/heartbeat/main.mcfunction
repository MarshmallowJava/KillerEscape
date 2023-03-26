
##心音に関する処理を行います

scoreboard players add heartbeat time 1

#生存者毎に処理
execute as @a[tag=survivor,gamemode=!spectator] at @s run function killerescape:game/heartbeat/tick
