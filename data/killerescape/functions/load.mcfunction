
##ゲーム内で使用するスコアボード、チーム、ボスバーなどの定義を行います

#汎用スコア
scoreboard objectives add var dummy
scoreboard objectives add time dummy
scoreboard objectives add const dummy

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

#板破壊時間
#キラーが板を破壊するまでの時間を管理します
scoreboard objectives add boardbreak_time dummy

#治療時間
#救急キットの治療が完了するまでの時間を管理します
scoreboard objectives add rescuekit_time dummy

#スニーク検知
#継続スニーク時間を保持する
scoreboard objectives add sneak_trigger minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneak dummy

#右クリック検知
#エンダーアイの場合継続右クリック時間を保持する
#歪んだキノコつきの棒の場合は、右クリック時に1となる
scoreboard objectives add useItem dummy
scoreboard objectives add useItem_trigger minecraft.used:minecraft.warped_fungus_on_a_stick

#被ダメージ検知
#生存者がキラーに攻撃されたことを検知します
scoreboard objectives add attacked minecraft.custom:minecraft.damage_resisted

#能力用スコア
scoreboard objectives add cool_dash dummy
scoreboard objectives add cool_area_heal dummy
scoreboard objectives add cool_area_heal2 dummy

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

#ゲーム定数を設定
scoreboard players set repairtime const 600
scoreboard players set carryontime const 60
scoreboard players set hooktime const 40
scoreboard players set rescuetime const 60
scoreboard players set executetime const 1200
scoreboard players set sabotagetime const 30
scoreboard players set boardbreaktime const 30
scoreboard players set rescuekittime const 600

#予約
#game_status[time]: ゲームの状態を管理;0=ロビー, 1=ゲーム, 2=リザルト
#countdown[time]: ゲーム開始までのカウントダウン管理
#result[time]: リザルトの表示時間管理
#editing[mapid]: 現在編集中のマップのID
#selected[mapid]: 現在設定中のマップのID

#アビリティ用ストレージを設定
function killerescape:game/ability/storage

#修理進捗バーフォーマット
data modify storage minecraft:killerescape formats.survivor set value ['{"text":"[","italic":false,"color":"white"}','{"text":"]","italic":false,"color":"white"}','{"text":"|","italic":false,"color":"green"}','{"text":"|","italic":false,"color":"gray"}']
data modify storage minecraft:killerescape formats.killer set value ['{"text":"[","italic":false,"color":"white"}','{"text":"]","italic":false,"color":"white"}','{"text":"|","italic":false,"color":"dark_red"}','{"text":"|","italic":false,"color":"gray"}']
