
##医療キットを使用している場合に呼び出されます
##実行者は医療キットを使用している生存者です

#能力保持者の場合実行する
execute if entity @s[nbt={Inventory:[{tag:{CustomTag:ability_work_hard}}]}] run function killerescape:game/ability/work_hard/tick
