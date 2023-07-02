
##コンフィグ画面を開きます

#タイトル
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n[設定項目] ※個人ごとに設定されます\n"}

#流血表現
tellraw @s[scores={enableBlood=0}] {"translate":"・流血表現 - %s","with":[{"text":"[無効]","italic": false,"color": "red"  ,"clickEvent": {"action":"run_command","value":"/trigger enableBlood_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲーム中の流血表現の有無を設定します\nただしキラー陣営である間、血痕は表示されます"}}}
tellraw @s[scores={enableBlood=1}] {"translate":"・流血表現 - %s","with":[{"text":"[有効]","italic": false,"color": "green","clickEvent": {"action":"run_command","value":"/trigger enableBlood_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲーム中の流血表現の有無を設定します\nただしキラー陣営である間、血痕は表示されます"}}}

#暗視
tellraw @s[scores={nightVision=0}] {"translate":"・暗視 - %s","with":[{"text":"[無効]","italic": false,"color": "red"  ,"clickEvent": {"action":"run_command","value":"/trigger nightVision_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲーム中の暗視効果の有無を設定します"}}}
tellraw @s[scores={nightVision=1}] {"translate":"・暗視 - %s","with":[{"text":"[有効]","italic": false,"color": "green","clickEvent": {"action":"run_command","value":"/trigger nightVision_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲーム中の暗視効果の有無を設定します"}}}

#ゲージタイプ
tellraw @s[scores={gaugeType=0}] {"translate":"・ゲージタイプ - %s","with":[{"text":"[メモリ]","italic": false,"color": "white","clickEvent": {"action":"run_command","value":"/trigger gaugeType_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲージの表現形式を設定します\n現在の設定では次のように表示されます\n例) 50%の場合 [|||||   ]"}}}
tellraw @s[scores={gaugeType=1}] {"translate":"・ゲージタイプ - %s","with":[{"text":"[百分率]","italic": false,"color": "green","clickEvent": {"action":"run_command","value":"/trigger gaugeType_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲージの表現形式を設定します\n現在の設定では次のように表示されます\n例) 50%の場合 [50%]"}}}
tellraw @s[scores={gaugeType=2}] {"translate":"・ゲージタイプ - %s","with":[{"text":"[内部値]","italic": false,"color": "yellow","clickEvent": {"action":"run_command","value":"/trigger gaugeType_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"ゲージの表現形式を設定します\n現在の設定では次のように表示されます\n例) 50%の場合 [100/200]"}}}

#シェーダーエフェクト
tellraw @s[scores={shaderEffects=0}] {"translate":"・シェーダーエフェクト - %s","with":[{"text":"[無効]","italic": false,"color": "red"  ,"clickEvent": {"action":"run_command","value":"/trigger shaderEffects_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"画面にかかる特殊演出の有無を設定します"}}}
tellraw @s[scores={shaderEffects=1}] {"translate":"・シェーダーエフェクト - %s","with":[{"text":"[有効]","italic": false,"color": "green","clickEvent": {"action":"run_command","value":"/trigger shaderEffects_trg"}}],"hoverEvent": {"action": "show_text","value": {"text":"画面にかかる特殊演出の有無を設定します"}}}

#空白
tellraw @s[tag=!developer] {"text":"\n\n\n"}
tellraw @s[tag=developer] {"text":"\n"}

#プレリリース
execute if score prerelease const matches 0 run tellraw @s[tag=developer] {"translate":"・プレリリース - %s","with":[{"text":"[無効]","italic": false,"color": "red"  ,"clickEvent": {"action":"run_command","value":"/scoreboard players add @s prerelease_trg 1"}}],"hoverEvent": {"action": "show_text","value": {"text":"開発中の要素の有無を設定します"}}}
execute if score prerelease const matches 1 run tellraw @s[tag=developer] {"translate":"・プレリリース - %s","with":[{"text":"[有効]","italic": false,"color": "green","clickEvent": {"action":"run_command","value":"/scoreboard players add @s prerelease_trg 1"}}],"hoverEvent": {"action": "show_text","value": {"text":"開発中の要素の有無を設定します"}}}

#空白
tellraw @s[tag=developer] {"text":"\n"}

#サウンド
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 0
