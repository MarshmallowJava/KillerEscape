##「潜伏」の処理
#効果発動
execute as @a if score @s sneak matches 60.. if data entity @s {Inventory:[{tag:{CustomTag:"ability_incubation"}}]} run effect give @s invisibility 1 0 true
