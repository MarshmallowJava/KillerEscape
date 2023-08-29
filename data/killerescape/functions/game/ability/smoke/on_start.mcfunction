
##試合が開始されたときに呼び出されます

#登録
execute as @a[nbt={Inventory:[{tag:{CustomTag:ability_smoke}}]}] at @s run function killerescape:game/ability/smoke/register
