
##能力が発動する前の処理を行います

#検索
function killerescape:util/get_current

#発動
execute unless entity @e[tag=current,tag=!sub,tag=pre] run tag @s remove pre

#移動
execute if entity @s[tag=pre] run effect give @a[tag=survivor,distance=..3] minecraft:slowness 1 2 true

#切り替え
execute unless entity @s[tag=pre] run function killerescape:game/killer/shadow/place/_
execute unless entity @s[tag=pre] run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 1 1.25 0