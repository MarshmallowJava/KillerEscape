
##次のページに移行します

#ページ数を取得
function killerescape:statistics/get_pagecount

#右端でなければ次のページを表示
execute if score @s var matches 2.. run scoreboard players remove @s statistics_page 1
execute if score @s var matches 2.. run function killerescape:statistics/show/
