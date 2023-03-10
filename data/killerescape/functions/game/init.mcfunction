
##ゲームにおける変数を全て初期化します

#ダメージ状態をリセット
scoreboard players set @a damage_stage 0
scoreboard players reset @a attacked
tag @a remove lying

#這いずり用のエンティティ削除
kill @e[type=minecraft:shulker,tag=pressure_shulker]
kill @e[type=minecraft:armor_stand,tag=pressure]

#フックをリセット
scoreboard players set @a rescue_time 0
scoreboard players set @a hook_time 0
scoreboard players set @a execute_time 0
scoreboard players set @a hook_count 0
scoreboard players reset @e[tag=hook] target_id
tag @e[tag=hook] remove used
tag @a remove hooked

#サボタージュ進捗をリセット
scoreboard players set @e sabotage_time 0
scoreboard players set @a boardbreak_time 0

#治療進捗をリセット
scoreboard players set @a rescuekit_time 0

#強制終了までの時間をリセット
scoreboard players set endgame time 0

#クールダウンリセット
scoreboard players set @a cool_attack 0

#ボスバー削除
bossbar set minecraft:remain players
bossbar set minecraft:remain2 players

#ゲームモードをアドベンチャーに
gamemode adventure @a[tag=escaped]
gamemode adventure @a[tag=eliminated]

#プレイヤー状態をリセット
tag @a remove eliminated
tag @a remove escaped

#役職タグを外す
tag @a remove killer
tag @a remove survivor

#アビリティをリセット
function killerescape:game/ability/init

#マップオブジェクトを設置
function killerescape:game/place/

#イベントトリガー
function killerescape:event/on_init
