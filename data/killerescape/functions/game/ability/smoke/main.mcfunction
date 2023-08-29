
##能力「煙幕」の処理を行います

#初期化
execute as @e[type=minecraft:snowball,tag=!initialized,nbt={Item:{tag:{CustomTag:smoke_grenade}}}] at @s run function killerescape:game/ability/smoke/launch/

#発動
scoreboard players set @e[tag=smoke_position,tag=!smoked] var 0
execute as @e[tag=smoke_position,tag=!smoked] store result score @s var on vehicle if entity @s
tag @e[tag=smoke_position,tag=!smoked,scores={var=0}] add smoked

#処理
execute as @e[tag=smoke_position,tag=smoked] at @s run function killerescape:game/ability/smoke/tick

#配給
scoreboard players add @a[scores={smoke_time=0..}] smoke_time 1
scoreboard players reset @a[scores={smoke_time=1200..}] smoke_time
give @a[scores={smoke_time=1199}] minecraft:snowball{OwnItem:1b,CustomTag:smoke_grenade,display:{Name:'{"text":"煙幕","italic": false,"color": "light_purple"}',Lore:['{"text":"着弾地点に煙幕を張ることができる"}']}}

#通知
execute as @a[scores={smoke_time=1199}] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 2 0
tellraw @a[scores={smoke_time=1199}] {"text":"[システム] 煙幕を獲得しました","color": "yellow"}
