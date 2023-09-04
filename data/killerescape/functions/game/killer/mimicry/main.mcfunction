
##謎鬼の処理を行います

#能力強制終了
execute as @a[nbt={SelectedItem:{tag:{CustomTag:Mimicry}}},nbt={Inventory:[{tag:{Mimicry:1b}}]},scores={useItem=1}] at @s run function killerescape:game/killer/mimicry/finish/

#能力発動
execute as @a[nbt={SelectedItem:{tag:{CustomTag:Mimicry}}},nbt=!{Inventory:[{tag:{Mimicry:1b}}]},scores={useItem=1,cool_mimicry=0}] at @s run function killerescape:game/killer/mimicry/launch/

#クールダウン
execute as @a[scores={cool_mimicry=1..}] at @s run function killerescape:game/killer/mimicry/cool

#終了条件
execute if entity @a[scores={cool_shadow=1..}] unless entity @e[tag=shadow] unless entity @e[tag=chain] run function killerescape:game/killer/mimicry/finish/
execute if entity @a[scores={cool_ice=1..}] run function killerescape:game/killer/mimicry/finish/
execute if entity @a[scores={cool_fishing=1..}] unless entity @e[tag=fishing_anchor] unless entity @e[tag=fishing_anchor_bobber] run function killerescape:game/killer/mimicry/finish/
