
##修理キットの処理を行います

#各プレイヤーごとの処理
execute as @a[nbt={SelectedItem:{tag:{CustomTag:RepairKit}}},scores={useItem=1..},tag=!lying,tag=display_ui] at @s run function killerescape:game/item/repair_kit/repair

#スキルチェック中止
execute as @a[scores={skillcheck_time=-2147483648..2147483647}] at @s anchored eyes positioned ^ ^ ^ anchored feet positioned ^ ^ ^1 unless entity @e[tag=communicator,tag=current_map,tag=repairable,tag=!repaired,distance=..1] run scoreboard players reset @s skillcheck_time
execute as @a[scores={skillcheck_time=-2147483648..2147483647}] unless entity @s[nbt={SelectedItem:{tag:{CustomTag:RepairKit}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomTag:RepairKit}}]}] run scoreboard players reset @s skillcheck_time
