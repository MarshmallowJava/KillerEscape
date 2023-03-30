
##能力が発動する前の処理を行います

#検索
function killerescape:util/get_current

#発動
execute unless entity @a[scores={useItem=1..},tag=current] run tag @s remove pre

#移動
execute if entity @s[tag=pre] run tp @s ^ ^ ^1 ~ 0
execute unless entity @s[tag=pre] run function killerescape:game/killer/shadow/place/_

#サウンド
execute unless entity @s[tag=pre] run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 1 1.25 0
