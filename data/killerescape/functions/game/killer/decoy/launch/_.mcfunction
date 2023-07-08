
##チャージ

#生成
summon minecraft:marker ~ ~ ~ {Tags:["decoy"]}

#チャージリセット
scoreboard players set @s decoy_time 0

#クールタイム設定
scoreboard players set @s cool_decoy 400

#サウンド
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2 0
