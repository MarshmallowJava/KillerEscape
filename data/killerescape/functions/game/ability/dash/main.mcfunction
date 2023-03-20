
##能力「ダッシュ」の処理を行います

#クールダウン値減少
scoreboard players remove @a[scores={cool_dash=1..}] cool_dash 1

#効果発動
execute as @a[scores={useItem=1..,cool_dash=0},nbt={SelectedItem:{tag:{CustomTag:ability_dash}}}] at @s run function killerescape:game/ability/dash/launch

#クールダウン表示
execute as @a[scores={cool_dash=1..},nbt={SelectedItem:{tag:{CustomTag:ability_dash}}}] at @s run function killerescape:game/ability/dash/show
