
##ゲーム内で使用するスコアボード、チーム、ボスバーなどの定義を行います

#汎用スコア
scoreboard objectives add var dummy
scoreboard objectives add time dummy
#定数
scoreboard objectives add const dummy
#一時キャッシュ
#tickをまたぐスコアの保持は非推奨
scoreboard objectives add temporary dummy

#エンティティID
#特に指定のない全てのエンティティに固有のIDを自動で割り振る
scoreboard objectives add entity_id dummy

#ターゲットID
#エンティティが狙っているIDを任意で割り振る
scoreboard objectives add target_id dummy

#マップID
#マップ固有のエンティティに割り振る
scoreboard objectives add mapid dummy

#負傷状態
#生存者の負傷状態です
scoreboard objectives add damage_stage dummy

#担ぎ時間
#キラーが生存者を担ぐまでの時間を管理します
scoreboard objectives add carryon dummy

#吊り時間
#キラーが生存者をフックに吊るまでの時間を管理します
scoreboard objectives add hook_time dummy

#吊り回数
#生存者がフックに吊られた回数を管理します
scoreboard objectives add hook_count dummy

#救助時間
#生存者が他の吊られた生存者を救出するまでの時間を管理します
scoreboard objectives add rescue_time dummy

#処刑時間
#吊られた生存者が死亡するまでの時間を管理します
scoreboard objectives add execute_time dummy

#妨害時間
#通信機の修理進捗を阻害するまでの時間を管理します
#所持者が通信機の場合、減少幅を管理します
scoreboard objectives add sabotage_time dummy

#通信機ボーナス
#サバイバーが通信機を修理する際に追加で進捗を進める量(ボーナス値)を管理します
scoreboard objectives add repair_bonus dummy

#板破壊時間
#キラーが板を破壊するまでの時間を管理します
scoreboard objectives add boardbreak_time dummy

#治療時間
#医療キットの治療が完了するまでの時間を管理します
scoreboard objectives add rescuekit_time dummy

#攻撃クールダウン
#キラーの攻撃間隔を管理します
scoreboard objectives add cool_attack dummy

#出血間隔
#血痕が発生する間隔を管理します
scoreboard objectives add blood_time dummy

#スキルチェック
#スキルチェックの時間を管理します
scoreboard objectives add skillcheck_time dummy

#スキルチェック結果
#スキルチェックの解答を保存します
scoreboard objectives add skillcheck_ans dummy

#シャドウ効果時間
#シャドウの拘束の効果時間を管理します
scoreboard objectives add shadow_time dummy

#凍結時間
#氷鬼の場合は能力の有効時間を管理します
#生存者の場合は凍結の進捗を管理します
scoreboard objectives add ice_time dummy

#ロッカー展開時間
#各役職がロッカー操作を行う時間を管理します
scoreboard objectives add box_time dummy

#ロッカーID
#各役職が操作するロッカーのIDを保持します
scoreboard objectives add box_id dummy

#吸血鬼チャージ時間
#吸血鬼のストックが増えるまでの時間を管理します
scoreboard objectives add vampire_time dummy

#ポイントストック
#吸血鬼のストック数を管理します
scoreboard objectives add vampire_count dummy

#リジェネ加速
#吸血鬼のストック回復速度の時間を管理します
scoreboard objectives add vampire_accel dummy

#デコイ作成時間
#デコイを作成するまでの時間を管理します
scoreboard objectives add decoy_time dummy

#眷属作成時間
#眷属を作成するまでの時間を管理します
scoreboard objectives add multiply_time dummy

#呪い時間
#呪いの持続時間を管理します
scoreboard objectives add curse_time dummy

#回復阻害
#回復阻害の持続時間を管理します
scoreboard objectives add prevent_cure dummy

#スニーク検知
#継続スニーク時間を保持する
scoreboard objectives add sneak_trigger minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneak dummy

#右クリック検知
#エンダーアイの場合継続右クリック時間を保持する
#歪んだキノコつきの棒の場合は、右クリック時に1となる
scoreboard objectives add useItem dummy
scoreboard objectives add useItem_trigger minecraft.used:minecraft.warped_fungus_on_a_stick

#統計データ: 修理時間
#プレイヤーが修理した時間を保持します
scoreboard objectives add data_repair dummy

#統計データ: 治療時間
#プレイヤーが治療した時間を保持します
#フックから救助したときも一定数加算されます
scoreboard objectives add data_rescue dummy

#統計データ: チェイス時間
#プレイヤーがチェイスした時間を保持します
scoreboard objectives add data_chase dummy

#統計データ: 攻撃回数
#鬼が生存者に攻撃した回数を保持します
scoreboard objectives add data_attack dummy

#被ダメージ検知
#生存者がキラーに攻撃されたことを検知します
#UNUSED
#scoreboard objectives add attacked minecraft.custom:minecraft.damage_resisted

#能力用スコア
scoreboard objectives add cool_dash dummy
scoreboard objectives add cool_area_heal dummy
scoreboard objectives add cool_area_heal2 dummy
scoreboard objectives add cool_fishing dummy
scoreboard objectives add cool_shadow dummy
scoreboard objectives add cool_ice dummy
scoreboard objectives add var_hope dummy
scoreboard objectives add engineer_time dummy
scoreboard objectives add cool_engineer dummy
scoreboard objectives add repair_flag dummy
scoreboard objectives add repair_time dummy
scoreboard objectives add close_call_time dummy
scoreboard objectives add cool_limit dummy
scoreboard objectives add cool_vampire dummy
scoreboard objectives add cool_decoy dummy
scoreboard objectives add cool_flashtrap dummy
scoreboard objectives add cool_multiply dummy

#定数を定義
scoreboard players set #-1 const -1
scoreboard players set #1 const 1
scoreboard players set #2 const 2
scoreboard players set #3 const 3
scoreboard players set #4 const 4
scoreboard players set #5 const 5
scoreboard players set #6 const 6
scoreboard players set #7 const 7
scoreboard players set #8 const 8
scoreboard players set #9 const 9
scoreboard players set #10 const 10
scoreboard players set #20 const 20
scoreboard players set #60 const 60
scoreboard players set #70 const 70
scoreboard players set #100 const 100
scoreboard players set #360 const 360

#ゲームバージョン
#仕様変更時に数値が加算されます
scoreboard players set game_version const 0

#ゲーム定数を設定
scoreboard players set repairtime const 900
scoreboard players set carryontime const 60
scoreboard players set hooktime const 40
scoreboard players set rescuetime const 60
scoreboard players set executetime const 1200
scoreboard players set sabotagetime const 30
scoreboard players set boardbreaktime const 30
scoreboard players set rescuekittime const 600
scoreboard players set endgametime const 2400
scoreboard players set attacktime const 40
scoreboard players set bloodtime const 30

#アビリティ定数
scoreboard players set engineer_cooltime const 1200
scoreboard players set engineer_bonus const 10
scoreboard players set coop_repair_cooltime const 20
scoreboard players set coop_repair_bonus const 10
scoreboard players set shadow_cool const 300
scoreboard players set shadow_length const 25
scoreboard players set shadow_delay const 15
scoreboard players set shadow_base const 60
scoreboard players set shadow_addition const 2
scoreboard players set ice_regentime const 3
scoreboard players set ice_cooltime const 200
scoreboard players set ice_maxtoken const 200
scoreboard players set ice_remain const 60
scoreboard players set fishing_cool const 200
scoreboard players set decoy_time const 30
scoreboard players set vampire_cool const 300
scoreboard players set vampire_regentime const 800
scoreboard players set vampire_maxcount const 10
scoreboard players set vampire_prevent const 600
scoreboard players set vampire_accel const 120
scoreboard players set multiply_cool const 400
scoreboard players set multiply_time const 20
scoreboard players set multiply_count const 3

#予約
#game_status[time]: ゲームの状態を管理;0=ロビー, 1=ゲーム, 2=リザルト
#countdown[time]: ゲーム開始までのカウントダウン管理
#result[time]: リザルトの表示時間管理
#editing[mapid]: 現在編集中のマップのID
#selected[mapid]: 現在設定中のマップのID
#endgame[time]: 試合強制終了までの時間管理
#heartbeat[time]: 心音の発動間隔

#プレリリース
execute unless score prerelease const matches -2147483648..2147483647 run scoreboard players set prerelease const 0

#氷鬼旧仕様
execute unless score oldice const matches -2147483648..2147483647 run scoreboard players set oldice const 0

#アビリティ用ストレージを設定
function killerescape:game/ability/storage

#キラー用ストレージを設定
function killerescape:game/killer/storage

#チップ用ストレージを設定
function killerescape:lobby/storage

#進捗バーフォーマット
data modify storage minecraft:killerescape formats.survivor set value ['{"text":"[","italic":false,"color":"white"}','{"text":"]","italic":false,"color":"white"}','{"text":"|","italic":false,"color":"green"}','{"text":"|","italic":false,"color":"gray"}']
data modify storage minecraft:killerescape formats.killer set value ['{"text":"[","italic":false,"color":"white"}','{"text":"]","italic":false,"color":"white"}','{"text":"|","italic":false,"color":"dark_red"}','{"text":"|","italic":false,"color":"gray"}']
data modify storage minecraft:killerescape formats.ice set value ['{"text":"[","italic":false,"color":"white"}','{"text":"]","italic":false,"color":"white"}','{"text":"|","italic":false,"color":"aqua"}','{"text":"|","italic":false,"color":"gray"}']

#通信機修理進捗
bossbar add minecraft:remain {"text":"title"}
bossbar set minecraft:remain color yellow
bossbar set minecraft:remain max 5
bossbar set minecraft:remain players
bossbar set minecraft:remain style notched_10
bossbar set minecraft:remain value 0
bossbar set minecraft:remain visible true

bossbar add minecraft:remain2 {"text":"title"}
bossbar set minecraft:remain2 color red
bossbar set minecraft:remain2 max 1
bossbar set minecraft:remain2 players
bossbar set minecraft:remain2 style notched_10
bossbar set minecraft:remain2 value 1
bossbar set minecraft:remain2 visible true

#チーム生成
team add survivor
team modify survivor collisionRule pushOtherTeams
team modify survivor color green
team modify survivor nametagVisibility hideForOtherTeams
team add killer
team modify killer collisionRule pushOtherTeams
team modify killer color red
team modify killer nametagVisibility hideForOtherTeams
team add alart
team modify alart color red

#個人設定項目

#ゴア表現無効
scoreboard objectives add enableBlood dummy
scoreboard objectives add enableBlood_trg trigger

#暗視
scoreboard objectives add nightVision dummy
scoreboard objectives add nightVision_trg trigger

#ゲージ表示
scoreboard objectives add gaugeType dummy
scoreboard objectives add gaugeType_trg trigger

#シェーダーエフェクト
scoreboard objectives add shaderEffects dummy
scoreboard objectives add shaderEffects_trg trigger

#プレリリース
scoreboard objectives add prerelease_trg dummy

#氷鬼旧仕様
scoreboard objectives add oldice_trg dummy

#再描画
function killerescape:config/ban/init/
execute as @e[tag=ban_operator] at @s run function killerescape:config/ban/paint/
