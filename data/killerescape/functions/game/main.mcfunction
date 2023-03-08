
##ゲーム中の処理を行います

#ボスバー処理
function killerescape:game/bossbar

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

#ゲート処理
function killerescape:game/gate/main

#板の処理
function killerescape:game/board/main

#ストラクチャーボイドが設置されたエリアは脱出判定とする
execute as @a[tag=survivor,tag=!eliminated,tag=!escaped] at @s if block ~ ~ ~ minecraft:structure_void run function killerescape:game/escape

#強制終了までの時間をカウントダウン
execute if score endgame time matches 1.. run scoreboard players remove endgame time 1
execute if score endgame time matches 1 as @a[tag=survivor] run function killerescape:game/hook/execute

#ゲーム終了判定
execute if entity @a[tag=survivor] unless entity @a[tag=survivor,tag=!eliminated,tag=!escaped] run function killerescape:game/finish

#生存者は攻撃することができない
effect give @a[tag=survivor] minecraft:weakness 1 255 true

#ジャンプ禁止
effect give @a[tag=killer] minecraft:jump_boost 2 129 true

#満腹度調整
execute as @a[tag=killer] store result score @s var run data get entity @s foodLevel
effect give @a[tag=survivor] minecraft:saturation 2 10 true
effect give @a[tag=killer,scores={var=4..}] minecraft:hunger 1 255 true
effect give @a[tag=killer,scores={var=1}] minecraft:saturation 2 0 true
effect clear @a[tag=killer,scores={var=2..}] minecraft:saturation
