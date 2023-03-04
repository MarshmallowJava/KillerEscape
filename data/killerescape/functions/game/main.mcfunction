
##ゲーム中の処理を行います

#マップ固有エンティティにタグ付け
function killerescape:util/get_mapentities

#アビリティ処理
function killerescape:game/ability/main

#アイテム処理
function killerescape:game/item/main

#通信機処理
function killerescape:game/communicator/main

#ダメージ処理
function killerescape:game/damage/main

#這いずり処理
function killerescape:game/lying/main

#フック処理
function killerescape:game/hook/main

#背負う処理
function killerescape:game/carryon/main

#ストラクチャーボイドが設置されたエリアは脱出判定とする
execute as @a[tag=survivor,tag=!eliminated,tag=!escaped] at @s if block ~ ~ ~ minecraft:structure_void run function killerescape:game/escape

#ゲーム終了判定
execute if entity @a[tag=survivor] unless entity @a[tag=survivor,tag=!eliminated,tag=!escaped] run function killerescape:game/finish

#生存者は攻撃することができない
effect give @a[tag=survivor] minecraft:weakness 1 255 true
