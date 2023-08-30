
##ゲーム開始時の処理を行います

#初期ストック数を設定
scoreboard players operation @a[nbt={Inventory:[{tag:{CustomTag:Vampire}}]}] vampire_count = vampire_initcount const
