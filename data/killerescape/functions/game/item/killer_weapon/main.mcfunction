
##キラー用武器の処理です

#各プレイヤー毎に実行
execute as @a[nbt={SelectedItem:{tag:{CustomTag:KillerWeapon}}}] at @s run function killerescape:game/item/killer_weapon/tick
