
##使用中のフックの処理を行います

#検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#捉える
effect give @a[tag=current] minecraft:glowing 1 0 true
effect give @a[tag=current] minecraft:levitation 1 255 true
execute as @a[tag=current] positioned ^ ^1 ^1.5 rotated as @s run tp @s ~ ~ ~ ~ ~
tag @a[tag=current] add hooked

#処刑時間
scoreboard players remove @a[tag=current] execute_time 1

#通知
scoreboard players operation time var = executetime const
scoreboard players operation time var /= #4 const
execute if score @a[tag=current,limit=1] execute_time = time var run tellraw @a[tag=survivor,tag=!current] {"translate":"[システム] %s の処刑時間まで後少しです","italic": false,"color":"red","with":[{"selector":"@a[tag=current]"}]}

#時間表示
execute as @a[tag=current] at @s run function killerescape:game/hook/progress__
tag @a[tag=current] remove display_ui

#処刑
execute if score @a[tag=current,limit=1] execute_time matches ..0 run scoreboard players reset @s target_id
execute if score @a[tag=current,limit=1] execute_time matches ..0 run tag @s remove used
execute as @a[tag=current,scores={execute_time=..0}] at @s run function killerescape:game/hook/execute
