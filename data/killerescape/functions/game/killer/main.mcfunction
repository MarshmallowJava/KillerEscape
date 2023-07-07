
##キラーの能力に関する処理を行います

execute if entity @a[nbt={Inventory:[{tag:{CustomTag:Shadow}}]}] run function killerescape:game/killer/shadow/main

execute if score oldice const matches 0 if entity @a[nbt={Inventory:[{tag:{CustomTag:Ice}}]}] run function killerescape:game/killer/ice/main
execute if score oldice const matches 1 if entity @a[nbt={Inventory:[{tag:{CustomTag:Ice}}]}] run function killerescape:game/killer/_ice/main

execute if entity @a[nbt={Inventory:[{tag:{CustomTag:Fishing}}]}] run function killerescape:game/killer/fishing/main

execute if entity @a[nbt={Inventory:[{tag:{CustomTag:Vampire}}]}] run function killerescape:game/killer/vampire/main

execute if entity @a[nbt={Inventory:[{tag:{CustomTag:Line}}]}] run function killerescape:game/killer/line/main

#統計
execute at @a[tag=killer] run scoreboard players add @a[tag=survivor,tag=!escaped,tag=!eliminated,distance=..16] data_chase 1
