
##パップ固有チェストを再配置します

#チェストを設置
setblock ~ ~ ~ minecraft:chest{LootTable:"killerescape:chest",Lock:"チェストの鍵"} replace

#ランダムプールから削除
tag @s add placed
