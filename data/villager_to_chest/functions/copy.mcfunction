#> villager_to_chest:copy
#
# プレイヤーに実行してもらうfunction  
# コピーしたい村人をexecute as で指定して実行される  
#
# @user

#実行された村人の数を記録する
scoreboard players add 村人の数 VillagerToChest 1

#村人情報を保存する。
execute as @s if entity @e[tag=VillagerToChest] if entity @s[type=villager] if score 村人の数 VillagerToChest matches 1 run function villager_to_chest:work/save_villager
execute as @s if entity @e[tag=VillagerToChest] if entity @s[type=villager] if score 村人の数 VillagerToChest matches 1 run schedule function villager_to_chest:work/first_chest 1t

##実行できなかった時のエラー表示
#設定されたチェストの未設置
execute unless entity @e[tag=VillagerToChest] run tellraw @a[limit=1,sort=nearest] {"text": "[error] 設定されたチェストが存在しません。","color": "red","bold": true}
execute unless entity @e[tag=VillagerToChest] run scoreboard players reset 村人の数

#このfunctionを実行しているエンティティが村人以外の場合
execute as @s unless entity @s[type=villager] run tellraw @a[limit=1,sort=nearest] {"text": "[error] このファンクションを実行できるのは村人だけです。","color": "red","bold": true}
execute as @s unless entity @s[type=villager] run scoreboard players reset 村人の数

#交易内容が存在しない場合
execute if score 村人の交易数 VillagerToChest matches 0 run function villager_to_chest:work/none_recipe_error

#対象村人が複数いた場合
execute if score 村人の数 VillagerToChest matches 2.. run tellraw @a[limit=1,sort=nearest] {"text": "[error] 対象にできる村人は1人までです。","color": "red","bold": true}