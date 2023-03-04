
##minecraft:killerescape argumentsに指定された引数に基づいてゲージを作成します
##作成されたデータは保存され次の呼び出しで同じテキストを生成しようとした場合、保存されたデータを返却します
##引数   - (value::int, max::int, length::int, format::json_text[])
##  value  - 現在の値
##  max    - 最大値
##  length - 長さ
##  format - ゲージバーのフォーマット 0:左端のテキスト 1:右端のテキスト 2:アクティブ 3:非アクティブ
##返却値 - minecraft:killerescape result

#データをコピー
execute store result score value var run data get storage minecraft:killerescape arguments.value
execute store result score max var run data get storage minecraft:killerescape arguments.max
execute store result score length var run data get storage minecraft:killerescape arguments.length
data modify storage minecraft:temp gauge.left set from storage minecraft:killerescape arguments.format[0]
data modify storage minecraft:temp gauge.right set from storage minecraft:killerescape arguments.format[1]
data modify storage minecraft:temp gauge.active set from storage minecraft:killerescape arguments.format[2]
data modify storage minecraft:temp gauge.inactive set from storage minecraft:killerescape arguments.format[3]

#スケーリング
scoreboard players operation now var = value var
scoreboard players operation now var *= length var
scoreboard players operation now var /= max var

#記録タグ作成
data modify storage minecraft:temp tag set from storage minecraft:killerescape arguments
data remove storage minecraft:temp tag.max
execute store result storage minecraft:temp tag.value int 1 run scoreboard players get now var

#引数データ削除(他の関数の呼び出しがあるため)
data remove storage minecraft:killerescape arguments

#キャッシュ検索(もし過去データがあれば引っ張ってくる)
data modify storage minecraft:temp temp set from storage minecraft:killerescape cache.gauge
data remove storage minecraft:temp temp2
function killerescape:util/get_gauge/_

#もし検索結果があればそのまま返却
execute if data storage minecraft:temp temp2 run data modify storage minecraft:killerescape result set from storage minecraft:temp temp2

#なければ生成
execute unless data storage minecraft:temp temp2 run function killerescape:util/get_gauge/__

#キャッシュ削除
data remove storage minecraft:temp gauge
data remove storage minecraft:temp temp
data remove storage minecraft:temp temp2
