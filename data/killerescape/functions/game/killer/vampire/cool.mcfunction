
##吸血鬼の能力のクールダウン値を表示します

scoreboard players remove @s cool_vampire 1

scoreboard players operation remain var = @s cool_vampire
execute if entity @s[tag=display_ui,nbt=!{SelectedItem:{tag:{CustomTag:KillerWeapon}}}] run function killerescape:game/ability/show_remain
execute if entity @s[tag=display_ui,nbt={SelectedItem:{tag:{CustomTag:KillerWeapon}}}] run title @s actionbar {"translate":"%s%s","with":[{"entity":"@s","nbt":"SelectedItem.tag.display.Lore[0]","interpret":true},{"text":"+回復阻害効果付与可能","color": "light_purple"}]}

tag @s remove display_ui
