
##能力が発動する前の処理を行います

#検索
function killerescape:util/get_current

#継続時間減少
scoreboard players add @s time 1
scoreboard players operation @s shadow_time = @s time

#発動
execute unless entity @a[tag=current,scores={useItem=1..}] run tag @s remove pre
execute if score @s time > shadow_length const run tag @s remove pre

#移動
execute rotated as @a[tag=current] rotated ~ 0 if entity @s[tag=pre] run tp @s ^ ^ ^2 ~ ~

#痕跡を召喚
execute at @s unless entity @e[tag=shadow,tag=sub,distance=..1.5] run function killerescape:game/killer/shadow/place/__

#切り替え
execute unless entity @s[tag=pre] run scoreboard players set @s time 0
execute unless entity @s[tag=pre] run function killerescape:game/killer/shadow/place/_
execute unless entity @s[tag=pre] run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 1 1.25 0
