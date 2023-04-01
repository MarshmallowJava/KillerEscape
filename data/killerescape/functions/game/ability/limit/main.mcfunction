##処理「極限」の処理を行います
#クールダウン減少
scoreboard players remove @a[scores={cool_limit=1..}] cool_limit 1

#効果発動
execute as @a[scores={useItem=1..,cool_limit=0,damage_stage=1},nbt={SelectedItem:{tag:{CustomTag:ability_limit}}}] at @s run function killerescape:game/ability/limit/launch

#フルヘルスは拒否
execute as @a[scores={useItem=1..,cool_limit=0,damage_stage=0},nbt={SelectedItem:{tag:{CustomTag:ability_limit}}}] at @s run function killerescape:game/ability/limit/refuse

#バフ制御
tag @a[scores={cool_limit=700..800}] remove can_hurted
execute as @a[scores={cool_limit=..700}] run attribute @s generic.movement_speed modifier remove 278b5df2-95c7-436b-8a12-9983e62cda03

#音
execute as @a[scores={cool_limit=799}] at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 1.8 0
execute as @a[scores={cool_limit=797}] at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 1.8 0


#クールダウン表示
execute as @a[scores={cool_limit=1..},nbt={SelectedItem:{tag:{CustomTag:ability_limit}}}] at @s run function killerescape:game/ability/limit/show
