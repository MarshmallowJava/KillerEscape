
##キャッシュを検索して過去に生成した同じデータを獲得します

#タグが一緒かどうか判定
execute store result score test var run data modify storage minecraft:temp temp[-1].tag set from storage minecraft:temp tag

#タグが一緒でコマンドが失敗した場合は取り出す
execute if score test var matches 0 run data modify storage minecraft:temp temp2 set from storage minecraft:temp temp[-1].text

#再起呼び出し
data remove storage minecraft:temp temp[-1]
execute unless data storage minecraft:temp temp2 if data storage minecraft:temp temp[-1] run function killerescape:util/get_gauge/_
