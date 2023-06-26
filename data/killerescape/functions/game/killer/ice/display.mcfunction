
##能力アイテムを手に持ったときの処理を行います

#表示
function killerescape:game/killer/ice/progress
title @s actionbar {"translate":"%s 残り効果時間 %s","with":[{"entity":"@s","nbt":"SelectedItem.tag.display.Lore[0]","interpret":true},{"storage":"minecraft:killerescape","nbt":"result","interpret":true}]}

#通常UIを表示しない
tag @s remove display_ui
