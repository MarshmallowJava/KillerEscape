
##蘇生の処理を行います

#発動
execute if entity @a[scores={revive_trigger=1..}] at @e[type=minecraft:item,nbt={Item:{id:"minecraft:snow_block"}}] as @a[gamemode=!spectator,limit=1,sort=nearest] run function killerescape:game/item/revive/launch

#トリガーリセット
scoreboard players reset @a revive_trigger
