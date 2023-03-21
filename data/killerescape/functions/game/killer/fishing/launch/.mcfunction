
##浮きが特殊な釣り竿によるものであるかどうか検証します

#検証
scoreboard players set @s var -1
execute store result score @s var as @a[limit=1,sort=nearest] if entity @s[scores={cool_fishing=0},nbt={Inventory:[{tag:{CustomTag:Fishing}}]}]

#特定の釣り竿によるものであれば続行
execute if score @s var matches 1 run function killerescape:game/killer/fishing/launch/_

#検証済み
tag @s add checked

#クールダウン中なら強制削除
execute if score @s var matches 0 as @a[limit=1,sort=nearest] if entity @s[scores={cool_fishing=1..},nbt={Inventory:[{tag:{CustomTag:Fishing}}]}] run kill @e[type=minecraft:fishing_bobber,tag=checked,limit=1,sort=nearest]
