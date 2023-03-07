
##修理キットの処理を行います

#各プレイヤーごとの処理
execute as @a[nbt={SelectedItem:{tag:{CustomTag:RepairKit}}},scores={useItem=1..},tag=!lying] at @s run function killerescape:game/item/repair_kit/repair
