##「エンジニア」のメイン処理
#クールダウン減少
scoreboard players remove @a[scores={cool_engineer=1..}] cool_engineer 1

#効果発動
execute as @a[scores={useItem=1..,cool_engineer=0},nbt={SelectedItem:{tag:{CustomTag:ability_engineer}}}] at @s run function killerescape:game/ability/engineer/launch

#クールダウン表示
execute as @a[scores={cool_engineer=1..},nbt={SelectedItem:{tag:{CustomTag:ability_engineer}}}] at @s run function killerescape:game/ability/engineer/show
