
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

#タイプごとに分岐
scoreboard players operation type var = @s gaugeType
execute if score type var matches 0 run function killerescape:util/get_gauge/type_0
execute if score type var matches 1 run function killerescape:util/get_gauge/type_1
execute if score type var matches 2 run function killerescape:util/get_gauge/type_2

#キャッシュ削除
data remove storage minecraft:temp gauge
