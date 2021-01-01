#> villager_to_chest:work/first_chest
#
# 1つ目のチェスト処理
#
# @within function villager_to_chest:copy

scoreboard players add 現在の交易順番 VillagerToChest 0
function villager_to_chest:work/save_recipes
function villager_to_chest:work/set_item

execute if score 現在の交易順番 VillagerToChest = 村人の交易数 VillagerToChest run function villager_to_chest:work/reset