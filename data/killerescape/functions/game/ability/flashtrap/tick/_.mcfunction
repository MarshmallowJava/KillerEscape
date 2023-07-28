
#時間経過
scoreboard players add @s[scores={time=..-1}] time 1
scoreboard players add @s[scores={time=1..}] time 1

#検知
execute if entity @a[scores={sabotage_time=1..}] run scoreboard players set @s[scores={time=0}] time 1

#発動
execute if score @s time matches 15 run function killerescape:game/ability/flashtrap/launch/_
execute if score @s time matches 15 run kill @s[type=minecraft:marker]

#設置音
execute if score @s time matches -3 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.5 2 0
execute if score @s time matches -1 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.5 2 0

#検知音
execute if score @s time matches 1 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 2 0
execute if score @s time matches 3 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 2 0
execute if score @s time matches 5 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 2 0
