##修理ボーナスの適用
#進捗加算
scoreboard players operation @e[type=armor_stand,tag=communicator,tag=repairable,sort=nearest,limit=1] time += @s repair_bonus
#サウンド
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2 0

#ボーナス値リセット
scoreboard players set @s repair_bonus 0