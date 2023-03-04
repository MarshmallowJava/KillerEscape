
execute as @a[scores={useItem=1.., cool_area_heal=..600},nbt={SelectedItem:{tag:{CustomTag:area_heal}}}] at @s run function killerescape:game/ability/area_heal/launch
scoreboard players remove @a[scores={cool_area_heal=1..}] cool_area_heal 1
scoreboard players remove @a[scores={cool_area_heal2=1..}] cool_area_heal2 1

scoreboard players add @e[type=marker,tag=area_heal] cool_area_heal 1
scoreboard players add @e[type=item,tag=area_heal_torch] cool_area_heal 1
scoreboard objectives add temp dummy
execute as @e[type=marker,tag=area_heal] at @s run function killerescape:game/ability/area_heal/heal
scoreboard objectives remove temp
kill @e[type=marker,tag=area_heal,scores={cool_area_heal=200..}]
kill @e[type=item,tag=area_heal_torch,scores={cool_area_heal=200..}]
