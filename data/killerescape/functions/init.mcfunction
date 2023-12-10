
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

#回復不可
#回復不可の持続時間を管理します
scoreboard objectives add prevent_cure dummy

#活力
#活力の持続時間を管理します
scoreboard objectives add bottomless_stamina dummy

#サボタージュレベル
#鬼のサボタージュ性能を保持します
scoreboard objectives add sabotage_level dummy

#スタミナ
#生存者のスタミナを管理します
scoreboard objectives add stamina dummy
scoreboard objectives add stamina_regen dummy

#ジャンプ検知
#プレイヤーがジャンプしたタイミングを検知します
scoreboard objectives add jump minecraft.custom:minecraft.jump

#スニーク検知
#継続スニーク時間を保持する
scoreboard objectives add sneak_trigger minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneak dummy

#右クリック検知
#エンダーアイの場合継続右クリック時間を保持する
#歪んだキノコつきの棒の場合は、右クリック時に1となる
scoreboard objectives add useItem dummy
scoreboard objectives add useItem_trigger minecraft.used:minecraft.warped_fungus_on_a_stick

#復活トリガー
#雪ブロックの発動トリガーです
scoreboard objectives add revive_trigger minecraft.dropped:minecraft.snow_block

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

#参照ページ
#現在開いている統計のページ数を保存します
scoreboard objectives add statistics_page dummy

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
scoreboard objectives add smoke_time dummy
scoreboard objectives add cool_mimicry dummy

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
team modify killer seeFriendlyInvisibles false
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
