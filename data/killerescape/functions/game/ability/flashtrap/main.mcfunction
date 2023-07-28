
#保持時
execute as @a[nbt={SelectedItem:{tag:{CustomTag:ability_flashtrap}}}] at @s run function killerescape:game/ability/flashtrap/tick/

#トラップ処理
execute as @e[tag=flashtrap] at @s run function killerescape:game/ability/flashtrap/tick/_

#クールダウン減少
scoreboard players remove @a[scores={cool_flashtrap=1..}] cool_flashtrap 1
