
##救急キットの処理を行います

#各プレイヤー毎に処理
execute as @a[nbt={SelectedItem:{tag:{CustomTag:RescueKit}}},tag=display_ui] at @s run function killerescape:game/item/rescue_kit/tick
