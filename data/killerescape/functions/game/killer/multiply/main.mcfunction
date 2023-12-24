
##増鬼の処理を行います

#カーソル
tag @e remove current
execute as @a[scores={cool_multiply=0},nbt={SelectedItem:{tag:{CustomTag:Multiply}}}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function killerescape:game/killer/multiply/launch/cursor/
kill @e[type=minecraft:marker,tag=multiply_cursor,tag=!current]

#表示
execute at @e[tag=multiply_cursor] run particle minecraft:soul_fire_flame ^1 ^ ^ 0 0 0 0 0 force @a[tag=killer]
execute at @e[tag=multiply_cursor] run particle minecraft:soul_fire_flame ^-1 ^ ^ 0 0 0 0 0 force @a[tag=killer]
execute at @e[tag=multiply_cursor] run particle minecraft:soul_fire_flame ^ ^ ^1 0 0 0 0 0 force @a[tag=killer]
execute at @e[tag=multiply_cursor] run particle minecraft:soul_fire_flame ^ ^ ^-1 0 0 0 0 0 force @a[tag=killer]
execute as @e[tag=multiply_cursor] at @s run tp @s ~ ~ ~ ~35 0

execute as @a[tag=display_ui,nbt={SelectedItem:{tag:{CustomTag:Soul}}}] at @s if entity @e[type=minecraft:wandering_trader,tag=multiply,tag=!hassoul,distance=..2] run function killerescape:game/killer/multiply/show/
execute at @e[type=minecraft:wandering_trader,tag=multiply,tag=hassoul] as @a[tag=killer,distance=..2] at @s run function killerescape:game/killer/multiply/show/_

#能力発動
execute as @a[scores={cool_multiply=0,useItem=1..},nbt={SelectedItem:{tag:{CustomTag:Multiply}}},tag=display_ui] at @s run function killerescape:game/killer/multiply/launch/
scoreboard players set @a[scores={useItem=0}] multiply_time 0

#クールダウン
execute as @a[scores={cool_multiply=1..}] at @s run function killerescape:game/killer/multiply/cool

#眷属の処理
execute as @e[type=minecraft:wandering_trader,tag=multiply] at @s run function killerescape:game/killer/multiply/tick/

#コンテナ処理
execute as @e[tag=multiply,tag=container] at @s run function killerescape:game/killer/multiply/tick/____
