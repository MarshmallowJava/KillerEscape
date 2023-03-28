
##ロッカーに関する処理を行います

#各ロッカー毎の処理
tag @a remove hiding
execute as @e[tag=box,tag=useable] at @s run function killerescape:game/box/tick/

#各生存者毎の処理
execute as @a[tag=survivor,scores={box_time=1..}] at @s run function killerescape:game/box/tick/___

#各キラー毎の処理
execute as @a[tag=killer,scores={box_time=1..}] at @s run function killerescape:game/box/tick/__
