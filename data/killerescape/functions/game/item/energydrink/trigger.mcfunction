
#活力を付与
scoreboard players operation @s bottomless_stamina > energydrink const

#演出
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2 0

#進捗削除
advancement revoke @s only killerescape:comsume_drink
