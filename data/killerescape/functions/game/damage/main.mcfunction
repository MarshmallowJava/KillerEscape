
##ダメージに関する処理を行います

#体力を更新
execute as @a[tag=update_health] run function killerescape:game/damage/__

#何らかの能力によって回復した場合
execute as @a[tag=survivor,tag=!damage_applied] store result score @s var run data get entity @s Health
scoreboard players set @a[tag=survivor,tag=!damage_applied,scores={var=11..,damage_stage=2}] damage_stage 1
scoreboard players set @a[tag=survivor,tag=!damage_applied,scores={var=20..,damage_stage=1}] damage_stage 0

#クールダウン減少
scoreboard players remove @a[scores={cool_attack=1..}] cool_attack 1

#表示
title @a[tag=killer,scores={cool_attack=1..}] times 0 2 0
title @a[tag=killer,scores={cool_attack=1..}] subtitle {"text":"✕","italic": false,"color": "red","bold": true}
title @a[tag=killer,scores={cool_attack=1..}] title ""

#攻撃許可
execute as @a[tag=killer] unless entity @s[nbt={SelectedItem:{tag:{CustomTag:KillerWeapon}}},scores={cool_attack=0}] run effect give @s minecraft:weakness 1 255 true
