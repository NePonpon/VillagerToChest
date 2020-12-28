#> villager_to_chest:save_recipes
#
# 交易内容のbuy,buy2,sellを保存する
#
# @input
#   storage villager_to_chest: villager_data
#
# @output
#   storage villager_to_chest: recipe_data
#
# @within
#       villager_to_chest:save_villager
#       villager_to_chest:set_item

#buyの保存
    data modify storage villager_to_chest: recipe_data append from storage villager_to_chest: villager_data.Recipes[0].buy

#buyBの保存
    data modify storage villager_to_chest: recipe_data append from storage villager_to_chest: villager_data.Recipes[0].buyB

#sellの保存
    data modify storage villager_to_chest: recipe_data append from storage villager_to_chest: villager_data.Recipes[0].sell

data remove storage villager_to_chest: villager_data.Recipes[0]