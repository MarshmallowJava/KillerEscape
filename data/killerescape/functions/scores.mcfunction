
##デフォルトのスコアボードで検知しきれない要素を処理します

#エンティティIDを割り振り
execute as @e[tag=!allocated_unique_id] unless score @s entity_id matches -2147483648..2147483647 run function killerescape:util/allocate_id

#ジャンプ処理
tag @a remove jump
tag @a[scores={jump=1..}] add jump
scoreboard players set @a jump 0

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

#タグ削除
tag @a remove offhand_action
tag @a[tag=offhand_trg] add offhand_action
tag @a remove offhand_trg
