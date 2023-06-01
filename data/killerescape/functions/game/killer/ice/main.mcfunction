
##氷鬼の能力について処理します

#能力者ごとに処理
execute as @a[nbt={SelectedItem:{tag:{CustomTag:Ice}}},scores={cool_ice=0,ice_time=0,useItem=1},tag=display_ui] at @s run function killerescape:game/killer/ice/launch
execute as @a[tag=killer,scores={ice_time=1..}] at @s run function killerescape:game/killer/ice/tick/

#クールダウン
execute as @a[scores={cool_ice=1..}] at @s run function killerescape:game/killer/ice/cool

#生存者毎に処理
execute as @a[tag=survivor,gamemode=!spectator] at @s run function killerescape:game/killer/ice/tick/_
