#> villager_to_chest:work/save_villager
# 村人の交易内容をストレージに保存する
#
# @output
#   storage villager_to_chest: villager_data
#
# @within function villager_to_chest:copy

data modify storage villager_to_chest: villager_data merge from entity @s Offers
execute store result score 村人の交易数 VillagerToChest run data get entity @s Offers.Recipes

scoreboard players operation チェストの数 VillagerToChest = 村人の交易数 VillagerToChest
scoreboard players operation チェストの数 VillagerToChest /= #9 VillagerToChest
function villager_to_chest:work/set_chest