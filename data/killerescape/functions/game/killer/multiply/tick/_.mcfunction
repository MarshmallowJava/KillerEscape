
##眷属の処理を行います

#ターゲット候補を検索
function killerescape:game/killer/multiply/search/

#対象の調整
execute if entity @a[tag=insight] run scoreboard players operation @s target_id = @a[tag=insight,nbt=!{ActiveEffects:[{Id:14}]},limit=1,sort=nearest] entity_id
execute if entity @a[tag=insight] run scoreboard players set @s time 0

#AI停止
data modify entity @s NoAI set value 1b
data remove entity @s WanderTarget

#フラグを全て削除
tag @a remove insight
