
#プレイヤー毎の処理を行います

#修理
execute anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 run tag @e[tag=communicator,tag=current_map,tag=repairable,distance=..1] add repairing

#イベントトリガー
function killerescape:event/on_repairing
