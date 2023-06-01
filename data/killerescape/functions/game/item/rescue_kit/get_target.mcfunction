
##実行者の状態から治療先を取得します

#タグ削除
tag @e remove target

#自身が平常状態であれば視点先の負傷プレイヤーを対象に指定
execute if entity @s[tag=!lying,tag=!hiding] anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 run tag @a[tag=survivor,tag=!hooked,tag=!hiding,scores={damage_stage=1..},distance=..2,limit=1,sort=nearest] add target

#対象が見つからなければ、自分を対象に指定
execute unless entity @a[tag=target] run tag @s[tag=!hooked,tag=!hiding,tag=!carryed,scores={damage_stage=1..}] add target
