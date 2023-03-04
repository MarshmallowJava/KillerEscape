
##target entity_id に指定したプレイヤーを実行者が担ぐものとしてエンティティを生成します

#背負われるプレイヤーを取得
scoreboard players operation current entity_id = target entity_id
function killerescape:util/get_current

#生成
summon armor_stand ~ ~ ~ {Tags:["carryon","init"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{}],NoBasePlate:1b,ShowArms:1b,Marker:1b,Pose:{Body:[348f,0f,0f],Head:[299f,180f,30f],LeftLeg:[33f,360f,352f],RightLeg:[33f,326f,0f],LeftArm:[75f,345f,0f],RightArm:[66f,8f,0f]}}

#頭防具を設定
execute as @a[tag=current] run loot replace entity @e[tag=carryon,tag=init] armor.head loot killerescape:get_playerhead

#紐づけ
scoreboard players operation @e[tag=carryon,tag=init] entity_id = @s entity_id
scoreboard players operation @e[tag=carryon,tag=init] target_id = target entity_id

#初期化完了
tag @e[tag=carryon,tag=init] remove init

#サウンド
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 1 0
