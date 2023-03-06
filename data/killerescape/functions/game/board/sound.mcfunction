
##板のサウンド処理を行います

execute if data block 0 0 0 Items[{tag:{CustomTag:Board}}] if score now var matches 15 run playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1 0
execute if data block 0 0 0 Items[{tag:{CustomTag:Board}}] if score now var matches 20 run playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0.5 0
