
##眷属の処理を行います

#ターゲットを検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#ターゲット候補を検索
function killerescape:game/killer/multiply/search/

#対象の調整
execute if score @s target_id matches -2147483648..2147483647 unless entity @a[tag=insight,tag=current,nbt=!{ActiveEffects:[{Id:14}]}] run scoreboard players reset @s target_id
execute unless score @s target_id matches -2147483648..2147483647 if entity @a[tag=insight] run scoreboard players operation @s target_id = @a[tag=insight,nbt=!{ActiveEffects:[{Id:14}]},limit=1,sort=nearest] entity_id
execute if score @s target_id matches -2147483648..2147483647 if entity @s[nbt={ActiveEffects:[{Id:14}]}] run scoreboard players reset @s target_id

#対象がいないまま壁の方を向いていれば振り返る
execute unless score @s target_id matches -2147483648..2147483647 unless block ^ ^ ^0.5 #killerescape:see_through run tp @s ~ ~ ~ ~180 ~

#追跡処理
execute if score @s target_id matches -2147483648..2147483647 if entity @a[tag=current] run function killerescape:game/killer/multiply/tick/_

#フラグを全て削除
tag @a remove insight
