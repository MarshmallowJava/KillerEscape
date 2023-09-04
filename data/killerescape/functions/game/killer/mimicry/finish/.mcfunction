
##模倣能力を使用完了したときに呼び出されます

#謎鬼なら処理続行
execute as @a[nbt={Inventory:[{tag:{CustomTag:Mimicry}}]}] at @s run function killerescape:game/killer/mimicry/finish/_
