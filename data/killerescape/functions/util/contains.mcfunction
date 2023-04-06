
##度数法from,to,degreeにおいてab間にcが含まれているかどうか検証します
##返却値result[var] - 0ならば含まれておらず、1ならば含まれている

scoreboard players operation a var = from var
scoreboard players operation b var = degree var
function killerescape:util/displacement
scoreboard players operation min var = result var

scoreboard players operation a var = to var
scoreboard players operation b var = degree var
function killerescape:util/displacement
scoreboard players operation max var = result var

#fromから見てdegreeが右側で、toから見てdegreeが左側にいるなら含まれていると言える
scoreboard players set result var 0
execute if score min var matches 0.. if score max var matches ..0 run scoreboard players set result var 1
