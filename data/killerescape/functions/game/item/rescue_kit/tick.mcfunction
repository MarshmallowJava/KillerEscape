
##各プレイヤー毎の処理を行います

#治療先を取得
function killerescape:game/item/rescue_kit/get_target

#表示
execute if score @s useItem matches 0 if entity @s[tag=target] run title @s actionbar ["右クリック長押しで治療する 対象:",{"text":"自分","italic":false,"color":"aqua"}]
execute if score @s useItem matches 0 if entity @s[tag=!target] if entity @a[tag=target] run title @s actionbar ["右クリック長押しで治療する 対象:",{"selector":"@a[tag=target]","italic":false,"color":"aqua"}]
execute if score @s useItem matches 0 if entity @s[tag=!target] unless entity @a[tag=target] run title @s actionbar ["右クリック長押しで治療する 対象:",{"text":"なし","italic":false,"color":"red"}]

#治療
execute if score @s useItem matches 1.. if entity @a[tag=target] run function killerescape:game/item/rescue_kit/tick_

#通常UIを表示しない
tag @s remove display_ui
