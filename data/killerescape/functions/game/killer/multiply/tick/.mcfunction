
##眷属の処理を行います

#魂持ちなら検索と追跡
execute if entity @s[tag=hassoul] run function killerescape:game/killer/multiply/tick/_

#検索
function killerescape:util/get_current

#追跡
execute at @s run tp @e[tag=current,type=minecraft:zombie] ~ ~ ~ ~ 0

#透明化
effect give @s minecraft:invisibility infinite 1 true
effect give @s minecraft:speed infinite 1 true
item replace entity @s weapon.mainhand with minecraft:air

#板を当てられた
execute if entity @e[tag=board,nbt={ArmorItems:[{tag:{animating:1b}}]},distance=..1.5] run function killerescape:game/killer/multiply/vanish

#時間経過
execute if score @s time matches 0.. run scoreboard players add @s time 1
execute if score @s time > multiply_remain const run function killerescape:game/killer/multiply/vanish

#状態を表示
execute if entity @s[tag=!hassoul] rotated ~ 0 run particle minecraft:dust 0 0 0 1 ^ ^1.2 ^0.25 0 0 0 1 1 force @a[tag=killer]
execute if entity @s[tag=hassoul] rotated ~ 0 run particle minecraft:dust 1 0 1 1 ^ ^1.2 ^0.25 0 0 0 1 1 force @a[tag=killer]
execute if entity @s[tag=havingsoul] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.6 0.5 0 1 force @a
