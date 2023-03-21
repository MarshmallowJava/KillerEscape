
##釣り鬼の能力に関する処理を行います

#発射
execute as @e[type=minecraft:fishing_bobber,tag=!checked] at @s run function killerescape:game/killer/fishing/launch/

#生存確認
execute as @e[tag=fishing_anchor_bobber] run function killerescape:game/killer/fishing/check

#各アンカー処理
execute as @e[tag=fishing_anchor] at @s run function killerescape:game/killer/fishing/tick/

#クールダウン
execute as @a[scores={cool_fishing=1..}] at @s run function killerescape:game/killer/fishing/cool
