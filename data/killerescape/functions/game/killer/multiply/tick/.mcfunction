
##眷属の処理を行います

#target_idにデータがなければ検索状態
execute unless score @s target_id matches -2147483648..2147483647 run function killerescape:game/killer/multiply/tick/_

#target_idが存在すれば追跡
execute if score @s target_id matches -2147483648..2147483647 run function killerescape:game/killer/multiply/tick/__

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
