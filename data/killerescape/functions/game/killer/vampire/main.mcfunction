
##吸血鬼の処理を行います

#各処理
execute as @a[tag=display_ui,nbt={Inventory:[{tag:{CustomTag:Vampire}}]}] at @s run function killerescape:game/killer/vampire/tick/

#移動処理
execute as @e[tag=vampire] at @s run function killerescape:game/killer/vampire/tick/____

#クールダウン
execute as @a[scores={cool_vampire=1..}] at @s run function killerescape:game/killer/vampire/cool

#追い払い
execute as @e[tag=vampire_point_collision] at @s run function killerescape:game/killer/vampire/tick/______
execute as @e[tag=runaway] at @s run function killerescape:game/killer/vampire/tick/_______
