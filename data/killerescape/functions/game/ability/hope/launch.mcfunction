##「希望」効果発動時処理

#アイテム所持者にバフ適用
execute as @a if data entity @s {Inventory:[{tag:{CustomTag:"ability_hope"}}]} at @s run function killerescape:game/ability/hope/launch_as_player
#フラグ書き換え
scoreboard players set #actived var_hope 1
