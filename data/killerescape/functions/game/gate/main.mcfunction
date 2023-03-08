
##ゲートに関する処理を行います

#各ゲート毎に処理
execute as @e[tag=gate,tag=current_map,tag=!opened] at @s run function killerescape:game/gate/tick

#通信機修理が済んだらピッケル付与
execute store result score count var if entity @e[tag=communicator,tag=current_map,tag=repaired]
execute as @a[tag=survivor] store result score @s var run clear @s minecraft:wooden_pickaxe 0
execute if score count var matches 5.. as @a[tag=survivor,scores={var=0}] at @s unless entity @e[type=minecraft:item,distance=..2] run give @s minecraft:wooden_pickaxe{display:{Name:'{"text":"ゲート開通ツール","italic": false,"color": "yellow"}',Lore:['{"text":"ビーコンを破壊することができる","italic": false,"color": "yellow"}']},CanDestroy:["minecraft:beacon"],OwnItem:1b,HideFlags:255,Unbreakable:1b,Enchantments:[{}]}
