
##攻撃ヒット時の処理を行います

execute if entity @s[nbt={Inventory:[{tag:{CustomTag:Vampire}}]}] run function killerescape:game/killer/vampire/get_token
execute if entity @s[nbt={Inventory:[{tag:{CustomTag:Vampire}}]},scores={cool_vampire=1..}] run scoreboard players operation @a[tag=survivor,nbt={HurtTime:10s}] prevent_cure = vampire_prevent const
