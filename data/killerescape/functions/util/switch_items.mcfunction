
##メインハンドとオフハンドのアイテムを取り替えます

item replace block 0 0 0 container.0 from entity @s weapon.mainhand
item replace block 0 0 0 container.1 from entity @s weapon.offhand

item replace entity @s weapon.mainhand from block 0 0 0 container.1
item replace entity @s weapon.offhand from block 0 0 0 container.0
