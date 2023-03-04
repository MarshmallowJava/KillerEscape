
##current[entity_id]に設定されているエンティティIDを持つエンティティに[current]タグを付与する。
##特に指定がない場合、実行者と同じエンティティIDを持つエンティティを対象とする

#指定されなかったので実行者のエンティティIDを使用
execute unless score current entity_id matches -2147483648..2147483647 run scoreboard players operation current entity_id = @s entity_id

#検索
tag @e remove current
execute as @e if score @s entity_id = current entity_id run tag @s add current

#スコアリセット
scoreboard players reset current entity_id
