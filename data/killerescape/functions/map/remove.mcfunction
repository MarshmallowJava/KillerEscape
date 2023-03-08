
##一定範囲内の最付近のマップユニークを削除します

#エフェクト
particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a

#ブロック削除
execute if entity @s[tag=board] run fill ^ ^ ^ ^ ^ ^1 minecraft:air replace
execute if entity @s[tag=chest] run fill ^ ^ ^ ^ ^ ^ minecraft:air replace
execute if entity @s[tag=communicator] run fill ^ ^ ^ ^ ^ ^ minecraft:air replace
execute if entity @s[tag=gate] run fill ^-1 ^ ^ ^1 ^2 ^ minecraft:air replace
execute if entity @s[tag=gate] run setblock ^3 ^ ^1 minecraft:air replace
execute if entity @s[tag=gate] run setblock ^-3 ^ ^1 minecraft:air replace
execute if entity @s[tag=hook] run fill ^ ^ ^ ^ ^3 ^ minecraft:air replace
execute if entity @s[tag=hook] run fill ^ ^2 ^1 ^ ^3 ^1 minecraft:air replace

#削除
kill @s[type=!minecraft:player]
