
##増鬼の処理を行います

#能力発動
execute as @a[scores={cool_multiply=0,useItem=1..},nbt={SelectedItem:{tag:{CustomTag:Multiply}}},tag=display_ui] at @s run function killerescape:game/killer/multiply/launch/
scoreboard players set @a[scores={useItem=0}] multiply_time 0

#クールダウン
execute as @a[scores={cool_multiply=1..}] at @s run function killerescape:game/killer/multiply/cool

#眷属の処理
execute as @e[tag=multiply] at @s run function killerescape:game/killer/multiply/tick/
