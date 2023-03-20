
##プールから目的の要素が表面に出るまで削除します

data remove storage minecraft:temp temp[-1]

scoreboard players remove result value 1

execute if score result value matches 1.. run function killerescape:game/killer/role/_
