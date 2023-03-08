
##minecraft:killerescape arguments.tickから受け取った数値をjsonテキストにフォーマットします

#データを抽出
execute store result score tick var run data get storage minecraft:killerescape arguments.tick
data remove storage minecraft:killerescape arguments

#計算
scoreboard players operation sec var = tick var
scoreboard players operation sec var /= #20 const
scoreboard players operation min var = sec var
scoreboard players operation min var /= #60 const
scoreboard players operation sec var %= #60 const

#テキスト生成
execute if score sec var matches 0..9 if score min var matches 0..9 run data modify block 1 0 0 Text1 set value '["0",{"score":{"name":"min","objective":"var"}},":0",{"score":{"name":"sec","objective":"var"}}]'
execute if score sec var matches 0..9 if score min var matches 10.. run data modify block 1 0 0 Text1 set value '[{"score":{"name":"min","objective":"var"}},":0",{"score":{"name":"sec","objective":"var"}}]'
execute if score sec var matches 10.. if score min var matches 0..9 run data modify block 1 0 0 Text1 set value '["0",{"score":{"name":"min","objective":"var"}},":",{"score":{"name":"sec","objective":"var"}}]'
execute if score sec var matches 10.. if score min var matches 10.. run data modify block 1 0 0 Text1 set value '[{"score":{"name":"min","objective":"var"}},":",{"score":{"name":"sec","objective":"var"}}]'

#コピー
data modify storage minecraft:killerescape result set from block 1 0 0 Text1
