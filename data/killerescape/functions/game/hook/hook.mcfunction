
##現在処理中のキラーが担いでいる生存者を実行者のフックに吊ります

#吊る生存者を取得し削除
scoreboard players operation current entity_id = @e[tag=current,tag=carryon] target_id
kill @e[type=minecraft:armor_stand,tag=current,tag=carryon]

#検索
function killerescape:util/get_current

#吊られる生存者のIDをコピー
scoreboard players operation @s target_id = @a[tag=current] entity_id

#ゲームモードを変更
gamemode adventure @a[tag=current]

#吊り回数加算
scoreboard players add @a[tag=current] hook_count 1

#処刑時間設定
scoreboard players operation @a[tag=current] execute_time = executetime const
scoreboard players operation @a[tag=current,scores={hook_count=2}] execute_time /= #2 const
scoreboard players set @a[tag=current,scores={hook_count=3}] execute_time 0

#使用済みタグを付与
tag @s add used

#イベントトリガー
function killerescape:event/on_hang
