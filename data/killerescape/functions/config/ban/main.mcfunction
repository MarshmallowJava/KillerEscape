
##ランダムプール設定処理を行います

#各処理
execute as @e[tag=ban_operator] at @s run function killerescape:config/ban/tick

#UI用アイテムを削除
kill @e[type=minecraft:item,nbt={Item:{tag:{CustomTag:Icon}}}]
execute as @a store result score @s var run clear @s #killerescape:all{CustomTag:Icon}
execute as @a[tag=button_clicked,scores={var=1..}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 0
tag @a remove button_clicked
