
##能力アイテムを手に持ったときの処理を行います

#表示
execute if score @s vampire_count < remain var run function killerescape:game/killer/vampire/progress
execute if score @s vampire_count < remain var run title @s[scores={vampire_accel=0}] actionbar {"translate":"%s (%s/%s個所持 獲得まで%s)","with":[{"entity":"@s","nbt":"SelectedItem.tag.display.Lore[0]","interpret":true},{"score":{"name":"@s","objective":"vampire_count"}},{"score":{"name":"remain","objective":"var"}},{"storage":"minecraft:killerescape","nbt":"result","interpret":true}]}
execute if score @s vampire_count < remain var run title @s[scores={vampire_accel=1..}] actionbar {"translate":"%s (%s/%s個所持 獲得まで%s%s)","with":[{"entity":"@s","nbt":"SelectedItem.tag.display.Lore[0]","interpret":true},{"score":{"name":"@s","objective":"vampire_count"}},{"score":{"name":"remain","objective":"var"}},{"storage":"minecraft:killerescape","nbt":"result","interpret":true},{"text":"↑","color":"red"}]}
execute unless score @s vampire_count < remain var run title @s actionbar {"translate":"%s (%s/%s個所持)","with":[{"entity":"@s","nbt":"SelectedItem.tag.display.Lore[0]","interpret":true},{"score":{"name":"@s","objective":"vampire_count"}},{"score":{"name":"remain","objective":"var"}}]}

#通常UIを表示しない
tag @s remove display_ui
