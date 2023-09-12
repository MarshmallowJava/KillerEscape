
##消耗しきったときに呼び出されます

#時間設定
scoreboard players operation @s stamina = stamina_max const
scoreboard players operation @s stamina *= #-1 const

#表示
tellraw @a {"text":"[システム] スタミナが尽きて疲労状態になりました","color": "red"}
