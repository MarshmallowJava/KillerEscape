
##実行者を担いでいるアーマースタンドとして実行し、解放します

#検索
scoreboard players operation current entity_id = @s target_id
function killerescape:util/get_current

#ゲームモード変更
gamemode adventure @a[tag=current]
scoreboard players set @a[tag=current] damage_stage 2
tag @a[tag=current] add update_health
tag @a[tag=current] add lying

#防具立て削除
kill @s[type=minecraft:armor_stand]

#サウンド
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 1 0
