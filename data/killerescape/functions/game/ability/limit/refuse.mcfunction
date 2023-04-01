##フルヘルス時の処理
tellraw @s [{"text": "[極限]","color": "gold"},{"text": "HPが50%","color": "red","underlined": true},{"text":"を超える場合は使用できません","color":"gray","underlined": false}]
playsound ui.button.click master @s ~ ~ ~ 1 0.8 0