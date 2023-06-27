
##まだ誰も担いでいない場合の処理を行います

#表示
execute if score @s sneak matches 0 run title @s actionbar "スニーク長押しで生存者を担ぐ"

#進捗
execute if score @s sneak matches 0 run scoreboard players set @s carryon 0
execute if score @s sneak matches 1.. run scoreboard players add @s carryon 1
execute if score @s sneak matches 1.. run effect give @a[tag=survivor,tag=lying,limit=1,sort=nearest] minecraft:slowness 1 255 true

#進捗バー表示
execute if score @s carryon matches 1.. run function killerescape:game/carryon/progress

#担ぐ
execute if score @s carryon > carryontime const run scoreboard players operation target entity_id = @a[tag=survivor,tag=lying,limit=1,sort=nearest] entity_id
execute if score @s carryon > carryontime const run function killerescape:game/carryon/create

#通常UIを表示しない
tag @s remove display_ui
