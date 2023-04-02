
##各処理を行います

#クリック判定
execute store result score count var run data get block ~ ~ ~ Items
execute if score count var matches 26 run function killerescape:config/ban/launch/

#再描画
execute store result score count var run data get block ~ ~ ~ Items
execute if score count var matches ..26 run function killerescape:config/ban/paint/
