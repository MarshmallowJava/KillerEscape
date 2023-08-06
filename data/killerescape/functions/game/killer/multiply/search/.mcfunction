
##実行者である眷属の追跡対象を検索します

#候補を設定します
tag @a[tag=survivor,tag=!hooked,tag=!hiding,tag=!eliminated,distance=..24] add insight

#視界外の候補を削除します
function killerescape:util/insight

#自身を保存
function killerescape:util/owner

#候補との間に障害物があれば候補外に設定します
execute as @a[tag=insight] at @s anchored eyes positioned ^ ^ ^ anchored feet facing entity @e[tag=owner] feet run function killerescape:game/killer/multiply/search/_
