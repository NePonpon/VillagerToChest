#> villager_to_chest:save_villager
# 村人の交易内容をストレージに保存する
#
# @output
#   storage villager_to_chest: villager_data
#
# @user

data modify storage villager_to_chest: villager_data merge from entity @s Offers
execute store result score 村人の交易数 VillagerToChest run data get entity @s Offers.Recipes

scoreboard players add 現在の交易順番 VillagerToChest 0
data merge block -216 4 -239 {Items:[]}

function villager_to_chest:save_recipes
function villager_to_chest:set_item

scoreboard players reset 1交易の残り要素数
scoreboard players reset 現在の交易順番
scoreboard players reset Slot
scoreboard players reset 村人の交易数
data remove storage villager_to_chest: villager_data
data remove storage villager_to_chest: recipe_data
data remove storage villager_to_chest: chest_data