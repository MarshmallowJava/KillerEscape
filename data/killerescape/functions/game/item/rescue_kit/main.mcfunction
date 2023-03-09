
##救急キットの処理を行います

#各プレイヤー毎に処理
execute as @a[nbt={SelectedItem:{tag:{CustomTag:RescueKit}}},tag=display_ui] at @s run function killerescape:game/item/rescue_kit/tick

#被治療者のUI表示
tag @a[tag=cared,tag=selfcare] remove cared
tag @a remove selfcare
execute as @a[tag=cared,tag=display_ui] at @s run function killerescape:game/item/rescue_kit/progress_
tag @a remove cared
