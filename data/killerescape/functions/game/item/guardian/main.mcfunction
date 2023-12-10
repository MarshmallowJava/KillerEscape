
##式神の処理を行います

#発動
execute as @a[scores={useItem=1},nbt={SelectedItem:{tag:{CustomTag:Guardian}}}] at @s run function killerescape:game/item/guardian/launch
