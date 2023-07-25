
##影鬼の処理を行います

#発動
execute as @a[nbt={SelectedItem:{tag:{CustomTag:Shadow}}},scores={cool_shadow=0}] at @s rotated ~ 0 run function killerescape:game/killer/shadow/launch/

#クールダウン
execute as @a[scores={cool_shadow=1..}] at @s run function killerescape:game/killer/shadow/cool

#能力ごとの処理
execute as @e[tag=shadow] at @s run function killerescape:game/killer/shadow/tick/

#サウンド
execute as @a at @s at @e[tag=shadow,tag=!pre,scores={time=1},limit=1,sort=nearest] run playsound minecraft:entity.blaze.ambient master @s ~ ~ ~ 1 1.25 0
execute as @a at @s at @e[tag=shadow,tag=!pre,scores={time=14},limit=1,sort=nearest] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1 0

#生存者毎の処理
execute as @a[scores={shadow_time=1..}] at @s run function killerescape:game/killer/shadow/tick/___

#削除
kill @e[type=minecraft:armor_stand,tag=chain,tag=!still_alive]
tag @e[tag=chain] remove still_alive
