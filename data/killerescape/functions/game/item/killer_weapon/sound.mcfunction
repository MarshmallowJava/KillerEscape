
##板のサウンド処理を行います

execute if score @s boardbreak_time matches 1.. if data block 0 0 0 Items[{tag:{CustomTag:KillerWeapon}}] if score now var matches 22 run playsound minecraft:item.shield.block master @a ~ ~ ~ 1 1 0
execute if score @s boardbreak_time matches 1.. if data block 0 0 0 Items[{tag:{CustomTag:KillerWeapon}}] if score now var matches 22 at @e[tag=board,limit=1,sort=nearest] run particle minecraft:crit ^ ^0.5 ^1 0 0 0 1 10 force @a
execute if score @s boardbreak_time matches 1.. if data block 0 0 0 Items[{tag:{CustomTag:KillerWeapon}}] if score now var matches 35 run playsound minecraft:item.shield.block master @a ~ ~ ~ 1 1 0
execute if score @s boardbreak_time matches 1.. if data block 0 0 0 Items[{tag:{CustomTag:KillerWeapon}}] if score now var matches 35 at @e[tag=board,limit=1,sort=nearest] run particle minecraft:crit ^ ^0.5 ^1 0 0 0 1 10 force @a

execute if score @s sabotage_time matches 1.. if data block 0 0 0 Items[{tag:{CustomTag:KillerWeapon}}] if score now var matches 22 run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 1 0
execute if score @s sabotage_time matches 1.. if data block 0 0 0 Items[{tag:{CustomTag:KillerWeapon}}] if score now var matches 22 at @e[tag=communicator,limit=1,sort=nearest] run particle minecraft:crit ^ ^ ^ 0 0 0 1 10 force @a
execute if score @s sabotage_time matches 1.. if data block 0 0 0 Items[{tag:{CustomTag:KillerWeapon}}] if score now var matches 35 run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 1 0
execute if score @s sabotage_time matches 1.. if data block 0 0 0 Items[{tag:{CustomTag:KillerWeapon}}] if score now var matches 35 at @e[tag=communicator,limit=1,sort=nearest] run particle minecraft:crit ^ ^ ^ 0 0 0 1 10 force @a
