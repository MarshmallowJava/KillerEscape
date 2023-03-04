
summon minecraft:marker ~ ~ ~ {Tags:["area_heal"]}
summon item ~ ~1 ~ {PickupDelay:32768,Invulnerable:1b,Tags:["area_heal_torch"],Item:{id:"minecraft:torch",Count:1b},NoGravity:1b}
scoreboard players add @s cool_area_heal 600
