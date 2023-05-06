
##ゲーム開始時に呼び出されます

#能力保持者に救急キットを付与
give @a[nbt={Inventory:[{tag:{CustomTag:ability_work_hard}}]}] minecraft:ender_eye{CustomModelData:4,CustomTag:RescueKit,display:{Name:'{"text":"医療キット","italic":false,"color":"yellow"}',Lore:['{"text":"視線に最も近いプレイヤーを治療し","italic":false,"color":"green"}','{"text":"誰もいない場合は自己治療となる","italic":false,"color":"green"}','{"text":"他人を治療する方が早く治療が完了する","italic":false,"color":"green"}']}}
