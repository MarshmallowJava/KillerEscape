
##予測線を表示します

particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 0 force @a[tag=killer]

execute positioned ^ ^ ^0.5 unless entity @a[tag=killer,distance=..0.5] run function killerescape:game/killer/line/prediction
