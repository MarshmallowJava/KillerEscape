
##修理キットの処理を行います

execute as @a[nbt={SelectedItem:{tag:{CustomTag:RepairKit}}},scores={useItem=1..}] at @s anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 run tag @e[tag=communicator,tag=current_map,tag=repairable,distance=..1] add repairing
