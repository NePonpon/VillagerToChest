#> villager_to_chest:work/save_recipes
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
#   function
#       villager_to_chest:work/set_item
#       villager_to_chest:work/first_chest

#buyの保存
    data modify storage villager_to_chest: recipe_data append from storage villager_to_chest: villager_data.Recipes[0].buy

#buyBの保存
    data modify storage villager_to_chest: recipe_data append from storage villager_to_chest: villager_data.Recipes[0].buyB

#sellの保存
    data modify storage villager_to_chest: recipe_data append from storage villager_to_chest: villager_data.Recipes[0].sell

data remove storage villager_to_chest: villager_data.Recipes[0]