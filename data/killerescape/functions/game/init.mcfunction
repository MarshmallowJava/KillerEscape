
##ゲームにおける変数を全て初期化します

#ダメージ状態をリセット
scoreboard players set @a damage_stage 0
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

#血痕をリセット
scoreboard players reset @a blood_time
kill @e[type=minecraft:marker,tag=blood]

#修理ボーナスをリセット
scoreboard players set @a repair_bonus 0

#スキルチェックリセット
scoreboard players reset @e skillcheck_time

#回復阻害をリセット
scoreboard players set @a prevent_cure 0

#キラーリセット
function killerescape:game/killer/init

#ロッカーリセット
scoreboard players reset @a box_time
scoreboard players reset @a box_id

#統計データをリセット
scoreboard players reset * data_repair
scoreboard players reset * data_rescue
scoreboard players reset * data_chase
scoreboard players reset * data_attack

#ボスバー削除
bossbar set minecraft:remain players
bossbar set minecraft:remain2 players

#ゲームモードをアドベンチャーに
gamemode adventure @a[tag=escaped]
gamemode adventure @a[tag=eliminated]

#プレイヤー状態をリセット
tag @a remove eliminated
tag @a remove escaped
tag @a remove carryed
tag @a remove can_hurted
tag @a remove hiding
tag @a remove threat

#役職タグを外す
tag @a remove killer
tag @a remove survivor

#チーム脱退
team leave @a

#エフェクト解除
effect clear @a

#鬼の移動速度を初期化
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-0

#アビリティをリセット
function killerescape:game/ability/init

#マップオブジェクトを設置
function killerescape:game/place/

#統計データリセット
function killerescape:statistics/reset

#イベントトリガー
function killerescape:event/on_init
