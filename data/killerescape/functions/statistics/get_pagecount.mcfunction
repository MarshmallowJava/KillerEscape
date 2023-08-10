
##ページ数関連のデータを取得します

execute store result score count var run data get storage minecraft:killerescape statistics.db
scoreboard players operation @s var = @s statistics_page
scoreboard players add @s var 1
