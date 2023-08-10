
##統計データを表示します

#データをコピー
data modify storage minecraft:temp temp set from storage minecraft:killerescape statistics.db

#シフト
scoreboard players operation @s var = @s statistics_page
execute if score @s var matches 1.. run function killerescape:statistics/show/_

#ページ数取得
function killerescape:statistics/get_pagecount

#表示
tellraw @s ""
tellraw @s "----------------------"
tellraw @s {"translate":"ページ (%s / %s)  %s %s","with":[{"score":{"name":"@s","objective": "var"}},{"score":{"name":"count","objective": "var"}},{"text":"←","clickEvent": {"action":"run_command","value":"/function killerescape:statistics/show/previous"}},{"text":"→","clickEvent": {"action":"run_command","value":"/function killerescape:statistics/show/next"}}]}
tellraw @s "----------------------"
tellraw @s ""
tellraw @s {"translate":"ゲームバージョン: %s","with":[{"storage":"minecraft:temp","nbt":"temp[-1].gameVersion"}]}
tellraw @s {"translate":"マップ: %s","with":[{"storage":"minecraft:temp","nbt":"temp[-1].map"}]}
tellraw @s ""
tellraw @s {"translate":"修理完了数: %s","with":[{"storage":"minecraft:temp","nbt":"temp[-1].gameResult.repaired"}]}
tellraw @s {"translate":"ゲート解放: %s","with":[{"storage":"minecraft:temp","nbt":"temp[-1].gameResult.gateOpened"}]}
tellraw @s {"translate":"死亡者数: %s","with":[{"storage":"minecraft:temp","nbt":"temp[-1].gameResult.eliminated"}]}
tellraw @s ""
execute unless data storage minecraft:temp temp[-1].killer run tellraw @s {"translate":"ERROR - INFONOTFOUNDEXCEPTION(KILLER)","color": "red"}
execute if data storage minecraft:temp temp[-1].killer run tellraw @s {"translate":"鬼: %s - 攻撃回数:%s","with":[{"storage":"minecraft:temp","nbt":"temp[-1].killer.ability","interpret":true},{"storage":"minecraft:temp","nbt":"temp[-1].killer.attack"}]}
tellraw @s ""
scoreboard players set @s var 0
function killerescape:statistics/show/__
tellraw @s "----------------------"
tellraw @s ""

#サウンド
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 0
