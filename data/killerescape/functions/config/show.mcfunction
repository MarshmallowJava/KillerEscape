
##コンフィグ画面を開きます

#タイトル
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n[設定項目] ※個人ごとに設定されます\n"}

#流血表現
tellraw @s[scores={enableBlood=0}] {"translate":"・流血表現 - %s","with":[{"text":"[無効]","italic": false,"color": "red"  ,"clickEvent": {"action":"run_command","value":"/trigger enableBlood_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲーム中の流血表現の有無を設定します\n公平性の都合上、無効にした場合にも血痕は表示されます"}}}
tellraw @s[scores={enableBlood=1}] {"translate":"・流血表現 - %s","with":[{"text":"[有効]","italic": false,"color": "green","clickEvent": {"action":"run_command","value":"/trigger enableBlood_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲーム中の流血表現の有無を設定します\n公平性の都合上、無効にした場合にも血痕は表示されます"}}}

#暗視
tellraw @s[scores={nightVision=0}] {"translate":"・暗視 - %s","with":[{"text":"[無効]","italic": false,"color": "red"  ,"clickEvent": {"action":"run_command","value":"/trigger nightVision_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲーム中の暗視効果の有無を設定します"}}}
tellraw @s[scores={nightVision=1}] {"translate":"・暗視 - %s","with":[{"text":"[有効]","italic": false,"color": "green","clickEvent": {"action":"run_command","value":"/trigger nightVision_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲーム中の暗視効果の有無を設定します"}}}

#空白
tellraw @s {"text":"\n\n\n\n\n"}

#サウンド
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 0
