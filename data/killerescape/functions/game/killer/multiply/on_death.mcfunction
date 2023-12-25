
##生存者が脱落したときに呼び出されます

#アイテム付与
loot give @a[nbt={Inventory:[{tag:{CustomTag:Multiply}}]}] loot killerescape:soul

#通知
tellraw @a {"text":"[システム] 脱落した生存者からタマシイを獲得しました","color":"yellow"}
