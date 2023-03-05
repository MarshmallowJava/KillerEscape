
##各ゲート毎の処理を行います

#判定
scoreboard players set @s var 0
execute if block ^3 ^ ^1 minecraft:air run scoreboard players set @s var 1
execute if block ^-3 ^ ^1 minecraft:air run scoreboard players set @s var 1

execute if score @s var matches 1 run function killerescape:game/gate/open
