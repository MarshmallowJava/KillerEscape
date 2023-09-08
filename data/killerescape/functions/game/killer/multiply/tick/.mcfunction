
##眷属の処理を行います

#ターゲットを検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#ターゲット候補を検索
function killerescape:game/killer/multiply/search/

#対象の調整
execute if score @s target_id matches -2147483648..2147483647 unless entity @a[tag=insight,tag=current] run scoreboard players reset @s target_id
execute unless score @s target_id matches -2147483648..2147483647 if entity @a[tag=insight] run scoreboard players operation @s target_id = @a[tag=insight,limit=1,sort=nearest] entity_id

#対象がいないまま壁の方を向いていれば振り返る
execute unless score @s target_id matches -2147483648..2147483647 unless block ^ ^ ^0.5 #killerescape:see_through run tp @s ~ ~ ~ ~180 ~

#追跡処理
execute if entity @a[tag=current] run function killerescape:game/killer/multiply/tick/_

#フラグを全て削除
tag @a remove insight

#ダメージ受ければ消滅
execute if entity @s[nbt={HurtTime:9s}] run function killerescape:game/killer/multiply/vanish
