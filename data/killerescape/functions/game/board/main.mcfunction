
##板に関する処理を行います

#生存者毎に処理します
execute as @a[tag=survivor,gamemode=!spectator,tag=!lying,tag=display_ui] at @s if entity @e[tag=board,tag=!downed,distance=..1.5] run function killerescape:game/board/tick

execute as @e[tag=board,nbt={ArmorItems:[{tag:{animating:1b}}]}] at @s positioned ^ ^ ^1 as @a[tag=killer,scores={cool_attack=0},distance=..1.5] at @s run function killerescape:game/board/stan
