
##フック処刑処理

#ゲームモード変更
gamemode spectator @s

#脱落タグ付与
tag @s add eliminated

#通知
tellraw @a {"translate":"[システム] %s が脱落しました","color":"red","with":[{"selector":"@s"}]}
