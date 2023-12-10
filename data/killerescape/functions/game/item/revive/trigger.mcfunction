
##雪玉獲得時の処理を行います

#所持している雪玉の数をカウント
execute store result score @s var run clear @s minecraft:snowball 0

#4つ以上なら雪ブロックを獲得し、4つ消費する
execute if score @s var matches 4.. run clear @s minecraft:snowball 4
execute if score @s var matches 4.. run give @s minecraft:snow_block{OwnItem:1b,display:{Lore:['{"text":"投げ捨てるとランダムな脱落した味方一名を復活させる","italic":false,"color":"white"}']}}

#トリガーリセット
advancement revoke @s only killerescape:collect
