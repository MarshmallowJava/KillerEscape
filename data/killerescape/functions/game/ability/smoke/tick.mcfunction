
##煙幕の処理を行います

#不可視を付与
execute if score @s time matches 20.. run effect give @a[distance=..2] minecraft:invisibility 1 0 true
execute if score @s time matches 20.. run effect clear @a[distance=..2] minecraft:glowing

#演出
execute if score @s time matches ..150 run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.5 1 1.5 0 10 force @a
execute if score @s time matches 2 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 0.5 0

#時間経過
scoreboard players add @s time 1

#消滅
kill @s[scores={time=300..}]
