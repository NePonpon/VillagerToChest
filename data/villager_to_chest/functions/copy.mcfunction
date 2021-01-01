#> villager_to_chest:copy
#
# プレイヤーに実行してもらうfunction  
# コピーしたい村人をexecute as で指定して実行される  
#
# @user

#村人情報を保存する。
execute as @s if entity @e[tag=VillagerToChest] if entity @s[type=villager] run function villager_to_chest:work/save_villager
execute as @s if entity @e[tag=VillagerToChest] if entity @s[type=villager] run schedule function villager_to_chest:work/first_chest 1t

##実行できなかった時のエラー表示
#設定されたチェストの未設置
execute unless entity @e[tag=VillagerToChest] run tellraw @a[limit=1,sort=nearest] {"text": "[error] 設定されたチェストが存在しません。","color": "red","bold": true}

#このfunctionを実行しているエンティティが村人以外の場合
execute as @s unless entity @s[type=villager] run tellraw @a[limit=1,sort=nearest] {"text": "[error] このファンクションを実行できるのは村人だけです。","color": "red","bold": true}

#交易内容が存在しない場合
execute if score 村人の交易数 VillagerToChest matches 0 run function villager_to_chest:work/none_recipe_error