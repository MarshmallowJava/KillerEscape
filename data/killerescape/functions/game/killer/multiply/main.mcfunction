
##増鬼の処理を行います

#カーソル
tag @e remove current
execute as @a[scores={cool_multiply=0},nbt={SelectedItem:{tag:{CustomTag:Multiply}}}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function killerescape:game/killer/multiply/launch/cursor/
kill @e[type=minecraft:marker,tag=multiply_cursor,tag=!current]

#表示
execute at @e[tag=multiply_cursor] run particle minecraft:soul_fire_flame ^1 ^ ^ 0 0 0 0 0 force @a
execute at @e[tag=multiply_cursor] run particle minecraft:soul_fire_flame ^-1 ^ ^ 0 0 0 0 0 force @a
execute at @e[tag=multiply_cursor] run particle minecraft:soul_fire_flame ^ ^ ^1 0 0 0 0 0 force @a
execute at @e[tag=multiply_cursor] run particle minecraft:soul_fire_flame ^ ^ ^-1 0 0 0 0 0 force @a
execute as @e[tag=multiply_cursor] at @s run tp @s ~ ~ ~ ~35 0

#能力発動
execute as @a[scores={cool_multiply=0,useItem=1..},nbt={SelectedItem:{tag:{CustomTag:Multiply}}},tag=display_ui] at @s run function killerescape:game/killer/multiply/launch/
scoreboard players set @a[scores={useItem=0}] multiply_time 0

#クールダウン
execute as @a[scores={cool_multiply=1..}] at @s run function killerescape:game/killer/multiply/cool

#眷属の処理
execute as @e[type=minecraft:wandering_trader,tag=multiply] at @s run function killerescape:game/killer/multiply/tick/
