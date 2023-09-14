
##眷属の処理を行います

#ターゲットを検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current
tag @e remove target
tag @a[tag=current] add target
function killerescape:util/get_current

#ターゲット候補を検索
function killerescape:game/killer/multiply/search/

#対象の調整
execute if score @s target_id matches -2147483648..2147483647 unless entity @a[tag=insight,tag=target,nbt=!{ActiveEffects:[{Id:14}]}] run scoreboard players reset @s target_id
execute unless score @s target_id matches -2147483648..2147483647 if entity @a[tag=insight] run scoreboard players operation @s target_id = @a[tag=insight,nbt=!{ActiveEffects:[{Id:14}]},limit=1,sort=nearest] entity_id
execute if score @s target_id matches -2147483648..2147483647 if entity @e[tag=smoke,distance=..3] run scoreboard players reset @s target_id

#対象がいないまま壁の方を向いていれば振り返る
execute unless score @s target_id matches -2147483648..2147483647 unless block ^ ^ ^0.5 #killerescape:see_through run tp @s ~ ~ ~ ~180 ~

#追跡処理
execute if score @s target_id matches -2147483648..2147483647 if entity @a[tag=target] run function killerescape:game/killer/multiply/tick/_
execute unless score @s target_id matches -2147483648..2147483647 run data modify entity @s NoAI set value 1b
execute unless score @s target_id matches -2147483648..2147483647 run data remove entity @s WanderTarget

#追跡
# execute at @s facing entity @a[tag=target] eyes run tp @s ~ ~ ~ ~ ~
execute at @s run tp @e[tag=current,type=minecraft:zombie] ~ ~ ~ ~ 0

#透明化
effect give @s minecraft:invisibility infinite 1 true
effect give @s minecraft:speed infinite 1 true
item replace entity @s weapon.mainhand with minecraft:air

#フラグを全て削除
tag @a remove insight
