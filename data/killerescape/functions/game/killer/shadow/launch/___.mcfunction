
##実行者が拘束された時に呼び出されます

#鎖生成
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["chain","init"],ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:14},Count:1b}]}

#紐づけ
scoreboard players operation @e[tag=chain,tag=init] entity_id = @s entity_id

#初期化完了
tag @e[tag=chain,tag=init] remove init

#拘束時間設定
scoreboard players set @s shadow_time 100

#サウンド
playsound minecraft:block.chain.place master @a ~ ~ ~ 2 0.5 0
