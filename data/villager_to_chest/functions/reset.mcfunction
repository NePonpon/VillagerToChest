#> villager_to_chest:reset
# 情報をリセットする
#
# @user
#
# @within
#   function villager_to_chest:*

execute as @e[tag=VillagerToChest] run data merge entity @s {Health:0.0f,DeathTime:19s}
scoreboard players reset 1交易の残り要素数
scoreboard players reset 現在の交易順番
scoreboard players reset Slot
scoreboard players reset 村人の交易数
scoreboard players reset チェストの数
data remove storage villager_to_chest: villager_data
data remove storage villager_to_chest: recipe_data
data remove storage villager_to_chest: chest_data