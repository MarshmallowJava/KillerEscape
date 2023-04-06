
##度数法aからbへの変位を算出します

scoreboard players operation result var = b var
scoreboard players operation result var -= a var
scoreboard players operation result var %= #360 const

execute if score result var matches ..-180 run scoreboard players operation result var += #360 const
execute if score result var matches 180.. run scoreboard players operation result var -= #360 const
