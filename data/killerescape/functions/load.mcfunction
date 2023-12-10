
##ゲーム内で使用する数値を設定します

#ゲームバージョン
#仕様変更時に数値が加算されます
scoreboard players set game_version const 1

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
scoreboard players set skillcheck_success const -300
scoreboard players set skillcheck_fail const -100
scoreboard players set carryon_release const 600
scoreboard players set stamina_jump const 200
scoreboard players set stamina_max const 1000
scoreboard players set stamina_regen const 5
scoreboard players set energydrink const 600

#アビリティ定数
scoreboard players set engineer_cooltime const 1200
scoreboard players set engineer_bonus const 10
scoreboard players set coop_repair_cooltime const 20
scoreboard players set coop_repair_bonus const 10

#キラー定数
function killerescape:game/killer/const

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

#自動BAN
execute unless score autoban const matches -2147483648..2147483647 run scoreboard players set autoban const 1

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

#再描画
function killerescape:config/ban/init/
execute as @e[tag=ban_operator] at @s run function killerescape:config/ban/paint/

#統計データページ初期化
scoreboard players set @a statistics_page 0
