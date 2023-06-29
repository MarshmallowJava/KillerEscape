
##固有ID割り当て済みのエンティティにタグを付与します
execute as @e[tag=!allocated_unique_id] if score @s entity_id matches -2147483648..2147483647 run tag @s add allocated_unique_id
