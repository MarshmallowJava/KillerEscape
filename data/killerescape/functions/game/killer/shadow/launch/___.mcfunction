
##実行者が拘束された時に呼び出されます

#鎖生成
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["chain","init"],ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:14},Count:1b}]}

#紐づけ
scoreboard players operation @e[tag=chain,tag=init] entity_id = @s entity_id

#空中判定
execute if data entity @s {OnGround:0b} run tag @e[tag=chain,tag=init] add inair

#初期化完了
tag @e[tag=chain,tag=init] remove init

#拘束時間設定
scoreboard players operation @s shadow_time = addition var

#サウンド
playsound minecraft:block.chain.place master @a[tag=!killer] ~ ~ ~ 2 0.5 0
playsound minecraft:block.chain.place master @a[tag=killer] ~ ~ ~ 100 0.5 1
