
##スタミナの処理を行います

#自然回復
execute as @a[tag=survivor] if score @s stamina < stamina_max const run function killerescape:game/stamina/regen
scoreboard players operation @a[tag=survivor] stamina_regen = stamina_regen const

#タグ付け
tag @a remove nottired
tag @a[tag=survivor,scores={stamina=1..}] add nottired

#消費
scoreboard players operation @a[tag=survivor,tag=jump] stamina -= stamina_jump const

#使い切り
execute as @a[tag=nottired,scores={stamina=..-1}] run function killerescape:game/stamina/tired

#制限
effect give @a[tag=survivor,scores={stamina=..-1}] minecraft:jump_boost 1 129 true
effect give @a[tag=survivor,scores={stamina=..-1}] minecraft:slowness 1 0 true
effect give @a[tag=survivor,scores={stamina=..-1}] minecraft:hunger 1 129 true
