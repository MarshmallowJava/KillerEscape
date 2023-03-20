
##氷鬼の能力について処理します

#能力者ごとに処理
execute as @a[nbt={Inventory:[{tag:{CustomTag:Ice}}]}] at @s run function killerescape:game/killer/ice/tick

#生存者毎に処理
execute as @a[tag=survivor] at @s run function killerescape:game/killer/ice/tick_
