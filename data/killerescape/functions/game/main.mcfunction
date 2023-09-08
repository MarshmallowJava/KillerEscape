
##ゲーム中の処理を行います

#ボスバー処理
function killerescape:game/bossbar/main

#殴れる人をフラグ立て
tag @a remove can_hurted
tag @a[tag=survivor,tag=!hooked,tag=!lying] add can_hurted

#ロッカー処理
function killerescape:game/box/main

#スキルチェック処理
function killerescape:game/skillcheck/main

#這いずり処理
function killerescape:game/lying/main

#アビリティ処理
function killerescape:game/ability/main

#アイテム処理
function killerescape:game/item/main

#通信機処理
function killerescape:game/communicator/main

#ダメージ処理
function killerescape:game/damage/main

#フック処理
function killerescape:game/hook/main

#背負う処理
function killerescape:game/carryon/main

#ゲート処理
function killerescape:game/gate/main

#板の処理
function killerescape:game/board/main

#心音の処理
function killerescape:game/heartbeat/main

#キラー処理
function killerescape:game/killer/main

#独自エフェクト処理
function killerescape:game/effect/main

#ストラクチャーボイドが設置されたエリアは脱出判定とする
execute as @a[tag=survivor,tag=!eliminated,tag=!escaped] at @s if block ~ ~ ~ minecraft:structure_void run function killerescape:game/escape

#強制終了までの時間をカウントダウン
execute if score endgame time matches 1.. run scoreboard players remove endgame time 1
execute if score endgame time matches 1 as @a[tag=survivor,tag=!eliminated] run function killerescape:game/hook/execute

#ゲーム終了判定
execute if entity @a[tag=survivor] unless entity @a[tag=survivor,tag=!eliminated,tag=!escaped] run function killerescape:game/finish

#生存者は攻撃することができない
effect give @a[tag=survivor] minecraft:weakness infinite 255 true

#ジャンプ禁止
effect give @a[tag=killer] minecraft:jump_boost 2 129 true

#キラーの移動速度補正
# execute unless entity @e[tag=gate,tag=current_map,tag=opened] run effect give @a[tag=killer] minecraft:speed infinite 1 true
# execute if entity @e[tag=gate,tag=current_map,tag=opened] run effect give @a[tag=killer] minecraft:speed infinite 2 true

#満腹度調整
execute as @a[tag=killer] store result score @s var run data get entity @s foodLevel
effect give @a[tag=survivor] minecraft:saturation 2 10 true
effect give @a[tag=killer,scores={var=4..}] minecraft:hunger 1 255 true
effect give @a[tag=killer,scores={var=1}] minecraft:saturation 2 0 true
effect clear @a[tag=killer,scores={var=2..}] minecraft:saturation

#移動制限解除
effect clear @a[gamemode=spectator] minecraft:slowness
effect clear @a[gamemode=spectator] minecraft:jump_boost
