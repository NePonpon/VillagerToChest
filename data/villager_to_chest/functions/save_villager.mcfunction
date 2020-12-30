#> villager_to_chest:save_villager
# 村人の交易内容をストレージに保存する
#
# @output
#   storage villager_to_chest: villager_data
#
# @user

data modify storage villager_to_chest: villager_data merge from entity @s Offers
execute store result score 村人の交易数 VillagerToChest run data get entity @s Offers.Recipes

scoreboard players operation チェストの数 VillagerToChest = 村人の交易数 VillagerToChest
scoreboard players operation チェストの数 VillagerToChest /= #9 VillagerToChest
function villager_to_chest:set_chest

scoreboard players add 現在の交易順番 VillagerToChest 0
function villager_to_chest:save_recipes
function villager_to_chest:set_item

execute if score 現在の交易順番 VillagerToChest = 村人の交易数 VillagerToChest run function villager_to_chest:reset