
##釣り鬼のパッシブクールダウン値を表示します

#クールダウン進行
scoreboard players add @s cool_fishing2 1
execute if score @s cool_fishing2 > fishing_cool2 const run scoreboard players set @s cool_fishing2 0

#サウンド
execute if score @s cool_fishing2 matches 10 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.3 0
execute if score @s cool_fishing2 matches 15 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.3 0
execute if score @s cool_fishing2 matches 20 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.3 0
