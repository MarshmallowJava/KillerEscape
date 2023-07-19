
##増え鬼の処理を行います

#発動
execute as @a[nbt={SelectedItem:{tag:{CustomTag:Decoy}}},scores={cool_decoy=0,useItem=1..},tag=display_ui] at @s rotated ~ 0 run function killerescape:game/killer/decoy/launch/
scoreboard players set @a[scores={useItem=0}] decoy_time 0

#クールダウン
execute as @a[scores={cool_decoy=1..}] at @s run function killerescape:game/killer/decoy/cool
execute as @a[tag=survivor,scores={curse_time=1..}] at @s run function killerescape:game/killer/decoy/tick/___

#デコイ処理
execute as @e[tag=decoy] at @s run function killerescape:game/killer/decoy/tick/
execute as @e[tag=decoy_trail] at @s run function killerescape:game/killer/decoy/tick/_
