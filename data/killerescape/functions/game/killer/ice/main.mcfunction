
##氷鬼の能力について処理します

#能力者ごとに処理
execute as @a[tag=killer,scores={cool_ice=-1}] at @s run function killerescape:game/killer/ice/tick/
execute as @a[nbt={SelectedItem:{tag:{CustomTag:Ice}}},scores={cool_ice=0,ice_time=1..,useItem=1},tag=display_ui] at @s run function killerescape:game/killer/ice/launch

#クールダウン
execute as @a[scores={cool_ice=1..}] at @s run function killerescape:game/killer/ice/cool

#ストック回復
scoreboard players add @a[scores={cool_ice=0,ice_time=..199},nbt={Inventory:[{tag:{CustomTag:Ice}}]}] ice_time 1

#生存者毎に処理
execute as @a[tag=survivor,gamemode=!spectator] at @s run function killerescape:game/killer/ice/tick/_

#ストックを表示
execute as @a[nbt={SelectedItem:{tag:{CustomTag:Ice}}},tag=display_ui] at @s run function killerescape:game/killer/ice/display
