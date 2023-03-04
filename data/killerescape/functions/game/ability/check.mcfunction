
##不正に他人の能力を持っているかチェックします

#アイテムに埋め込まれたエンティティIDを取得
execute store result score @s var run data get entity @s SelectedItem.tag.EntityID

execute if score @s var matches 1.. unless score @s var = @s entity_id run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5 0
execute if score @s var matches 1.. unless score @s var = @s entity_id run tellraw @a {"text":"[システム] 能力アイテムを受け渡ししないでください","italic": false,"color": "red"}
