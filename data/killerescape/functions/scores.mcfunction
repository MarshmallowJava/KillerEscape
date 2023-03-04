
##デフォルトのスコアボードで検知しきれない要素を処理します

#右クリック処理
scoreboard players set @a[tag=!rightclick] useItem 0
scoreboard players add @a[tag=rightclick] useItem 1
scoreboard players set @a[scores={useItem_trigger=1}] useItem 1
tag @a remove rightclick

#スニーク処理
scoreboard players set @a[scores={sneak_trigger=0}] sneak 0
scoreboard players add @a[scores={sneak_trigger=1}] sneak 1

#スコアリセット
scoreboard players set @a sneak_trigger 0
scoreboard players set @a useItem_trigger 0
