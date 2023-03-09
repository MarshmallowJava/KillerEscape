
##実行者の状態から治療先を取得します

tag @e remove target
execute anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 run tag @a[tag=survivor,scores={damage_stage=1..},distance=..2,limit=1,sort=nearest] add target

execute unless entity @a[tag=target] run tag @s[scores={damage_stage=1..}] add target
